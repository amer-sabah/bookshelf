package jo.secondstep.bookshelf.controllers;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jo.secondstep.bookshelf.entities.Book;
import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.BorrowOperations;
import jo.secondstep.bookshelf.entities.Library;
import jo.secondstep.bookshelf.entities.Permission;
import jo.secondstep.bookshelf.entities.Person;
import jo.secondstep.bookshelf.entities.User;
import jo.secondstep.bookshelf.repositories.BooksLibraryRepository;
import jo.secondstep.bookshelf.repositories.BorrowOperationRepository;
import jo.secondstep.bookshelf.repositories.PermissionRepository;
import jo.secondstep.bookshelf.repositories.PersonRepository;
import jo.secondstep.bookshelf.repositories.UserRepository;

@Controller
@RequestMapping(value="borrowoperations")
public class BorrowOperationsController{
	
	@Autowired
	BorrowOperationRepository borrowOperationRepo;
	
	@Autowired
	PersonRepository personRepository;
	
	@Autowired
	BooksLibraryRepository booksLibraryRepository; 
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	PermissionRepository permissionRepository; 
	
	BooksLibrary booksLibrary;
	
	 @RequestMapping(value = "")
	 public String home(@RequestParam (name="id") int bookId) {
		 
		booksLibrary= booksLibraryRepository.findBook(bookId);  
	 	return "borrowForm";
	 }
	 
	  
	@RequestMapping( value = "/submit" )
	public String submit(@RequestParam (name="name") String customerName ,
			@RequestParam (name="email") String customerEmail,
			@RequestParam (name="number") String phoneNumber,
			@RequestParam (name="days") int numberDays) {
		
 	   
 	      
 		   
		
	       Person customer=new Person();
	       customer.setName(customerName);
	       customer.setEmail(customerEmail);
	       customer.setPhone_number(phoneNumber);
	       customer.setUser(null);
	       personRepository.save(customer);
	        	       
	       BorrowOperations borrowOperation=new BorrowOperations();
	       borrowOperation.setCustomer(customer);
	       borrowOperation.setBook(booksLibrary);
	       borrowOperation.setNumber_of_borrow_days(numberDays);
	       borrowOperation.setAcccept(null);
	       borrowOperation.setStatus("pending");
	       borrowOperationRepo.save(borrowOperation);
		
		   return "borrowForm";
		
	}
	
	
	@RequestMapping( value = "/request" )
	public String request(ModelMap model) {
		model.addAttribute("requests",
				            borrowOperationRepo. findBorrowOperationsByStatus("pending"));
		
        return "borrowRequests";
	}
 
	@RequestMapping( value = "request/accept" )
	public String accept(@RequestParam (name="id") int id,ModelMap model) { 
		 
		BorrowOperations borrowOperations=borrowOperationRepo.findBorrowOperationsById(id);
		 
		 User user=new User();
		 user.setUsername(borrowOperations.getCustomer().getEmail());
		 user.setPassword(borrowOperations.getCustomer().getName() +"@");
		 userRepository.save(user);
		 
		 Permission permission=new Permission();
		 permission.setUser(user);
		 permission.setRole("customer");
		 permissionRepository.save(permission);
		 
		 borrowOperations.getCustomer().setUser(user);
		 borrowOperations.setAcccept(LocalDate.now());
		 borrowOperations.setStatus("accepted");
		 borrowOperationRepo.save(borrowOperations);
		 
		 int newQuantity=booksLibrary.getQuantity()-1;
		 booksLibrary.setQuantity(newQuantity);
		 booksLibraryRepository.save(booksLibrary);
		 
		 model.addAttribute("requests",
		            borrowOperationRepo. findBorrowOperationsByStatus("pending"));
		 
		 return "borrowRequests";
	}
	
	@RequestMapping( value = "request/reject" )
	public String reject(@RequestParam (name="id") int id,ModelMap model) {
		
		 BorrowOperations borrowOperations= borrowOperationRepo.findBorrowOperationsById(id);
		 borrowOperations.setStatus("rejected");
		 borrowOperationRepo.save(borrowOperations);
		 
		 model.addAttribute("requests",
	            borrowOperationRepo. findBorrowOperationsByStatus("pending"));
	 
		return "borrowRequests";
	}
}




