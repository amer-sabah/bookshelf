package jo.secondstep.bookshelf.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jo.secondstep.bookshelf.entities.Library;
import jo.secondstep.bookshelf.entities.Permission;
import jo.secondstep.bookshelf.entities.Person;
import jo.secondstep.bookshelf.entities.User;
import jo.secondstep.bookshelf.repositories.LibraryRepository;
import jo.secondstep.bookshelf.repositories.PermissionRepository;
import jo.secondstep.bookshelf.repositories.PersonRepository;
import jo.secondstep.bookshelf.repositories.UserRepository;

@Controller
@RequestMapping(value = "library")
public class LibraryController {
	@Autowired
	LibraryRepository libraryRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	PersonRepository personRepository;
	
	@Autowired
	PermissionRepository permissionRepository;
	
	Library updateLibrary;
	
	@GetMapping("/")
	public String home(ModelMap model) {
		model.addAttribute("libraries",libraryRepository.findLibraryByStatus("accepted"));
		return "libraries";
	}
	
	@RequestMapping(path = "/inactivate")
	public String inactivate(@RequestParam(name = "id") int libraryId) {
		Library library = libraryRepository.findLibraryById(libraryId);
		library.setStatus("inactivated");
		
		libraryRepository.save(library);
		return "libraries";
	}
	
	@RequestMapping(path = "/update")
	public String update(@RequestParam(name = "id") int libraryId) {
	
		updateLibrary = libraryRepository.findLibraryById(libraryId);		
	    return "updateLibraryForm";
	}
	
	@RequestMapping(path = "/submitUpdate")
	public String submitUpdate(ModelMap model,@RequestParam(name = "libraryName") String libraryName,
			                   @RequestParam(name = "location") String location,
			                   @RequestParam(name = "description") String description) {
		
		
		Boolean success=false;
		if(libraryName != "" || location != "" || description != "" ) {
			updateLibrary.setLibrary_name(libraryName);	
		    updateLibrary.setLocation(location);
		    updateLibrary.setDescription(description);
		    libraryRepository.save(updateLibrary);
		    success = true;
		}
		
		model.addAttribute("success", success);
		return "updateLibraryForm";
	}
	
	@GetMapping("/addLibrary")
	public String addLibrary() {
		return "addLibrary";
	}
	
	
	@GetMapping("/requestes")
	public String getLibrariesRequestes(ModelMap model) {
		model.addAttribute("libraries",libraryRepository.findLibraryByStatus("pending"));
		return "libraryRequestes";
	}
	
	
	@RequestMapping(method = RequestMethod.POST )
	public String submit(ModelMap model, @ModelAttribute("library") Library library,@ModelAttribute("owner") Person owner) {
        Boolean error =false;
		if(owner.getName()=="" || owner.getEmail()=="" || owner.getPhone_number()=="" ||
				library.getLibrary_name()=="" || 	library.getLocation()=="" || 
				library.getDescription() == "") {
			    error = true;
			model.addAttribute("error",error);
			return "addLibrary";
		}
		
		model.addAttribute("error",error);
		
		owner.setUser(null);
		personRepository.save(owner);
		
		library.setOwner(owner);
		library.setStatus("pending");
		libraryRepository.save(library);
		
		return "addLibrary";
	}
	
	@RequestMapping(path = "requestes/accept")
	public String accept(ModelMap model,@RequestParam(name = "id") int id) {
		
		Library library= libraryRepository.findLibraryById(id);
		Person owner =personRepository.findPersonById(library.getOwner().getPerson_id());
		
		User user =new User();
		user.setUsername(owner.getEmail());
		user.setPassword(owner.getName()+"1234");
		userRepository.save(user);
		
		Permission permission=new Permission();
		permission.setUser(user);
		permission.setRole("library_owner");
		permissionRepository.save(permission);
		
		owner.setUser(user);
		personRepository.save(owner);
		
		library.setOwner(owner);
		library.setStatus("accepted");
		libraryRepository.save(library);
		
		model.addAttribute("libraries",libraryRepository.findLibraryByStatus("pending"));
		return "libraryRequestes";
	}
	
	
	@RequestMapping(path = "requestes/reject")
	public String reject(ModelMap model,@RequestParam(name = "id") int id) {
		
		Library library= libraryRepository.findLibraryById(id);
		Person owner =personRepository.findPersonById(library.getOwner().getPerson_id());
		
		owner.setUser(null);
		personRepository.delete(owner);
		
		model.addAttribute("libraries",libraryRepository.findLibraryByStatus("pending"));
		return "libraryRequestes";
	}
}
