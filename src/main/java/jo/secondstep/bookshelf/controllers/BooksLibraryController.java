package jo.secondstep.bookshelf.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import antlr.collections.List;
import jo.secondstep.bookshelf.entities.Book;
import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.Library;
import jo.secondstep.bookshelf.repositories.BooksLibraryRepository;
import jo.secondstep.bookshelf.repositories.BooksRepository;
import jo.secondstep.bookshelf.repositories.LibraryRepository;


@Controller
@RequestMapping(value="addBooks")
public class BooksLibraryController {
	
	@Autowired
	BooksRepository booksRepository;
	
	@Autowired
	BooksLibraryRepository booksLibraryRepository;
	
	@Autowired
	LibraryRepository libraryRepository;
	
	BooksLibrary booksLibrary;
	
	/*@RequestMapping("/allBooks")
	public ModelAndView listBooks(ModelAndView modelView) {
		
	    modelView.setViewName("addBookToLibrary");
	    modelView.addObject("listbook", booksRepository.findAll());

	    return modelView;
	}*/
	
	@RequestMapping( value = "/" )
	public String home() {
		return "addBookToLibrary";
	}
	
	@RequestMapping( value = "/searchbook" )
	public String searchForBook(ModelMap model,@RequestParam (name="name") String bookName) {
		model.addAttribute("books",booksRepository.findBooksByName(bookName));
		return "addBookToLibrary";
	}
	
	
	@RequestMapping( value = "/addbook" )
	public ModelAndView addBookToLibrary(@RequestParam (name="libraryId") int libraryId,
			@RequestParam (name="bookId") int bookId) {
		
		ModelAndView model = new ModelAndView("addBookToLibrary");
		
		Book newBook=booksRepository.findBookById(bookId);
		Library library=libraryRepository.findLibraryById(libraryId);
        
		booksLibrary =new BooksLibrary();
		
		booksLibrary.setBook(newBook);
		booksLibrary.setLibrary(library);
		
		
		model.addObject("show",true);
		
		return model;
	}
	
	
	@RequestMapping( value = "/submit" )
	public String submit(@RequestParam (name="quantity") int quantity,
			@RequestParam (name="status") String status) {
		
		
		booksLibrary.setQuantity(quantity);
		booksLibrary.setStatus(status);
		booksLibraryRepository.save(booksLibrary);
		return "addBookToLibrary";
	}
	
	
	
	
	
	
	
}
