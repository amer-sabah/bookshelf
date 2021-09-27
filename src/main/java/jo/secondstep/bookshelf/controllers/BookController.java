package jo.secondstep.bookshelf.controllers;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.Library;
import jo.secondstep.bookshelf.repositories.BooksLibraryRepository;
import jo.secondstep.bookshelf.repositories.LibraryRepository;

@Controller
@RequestMapping(value = "book")
public class BookController {

	@Autowired
	private BooksLibraryRepository booksLibraryRepository;
	@Autowired
	private LibraryRepository libraryRepository;

	private List<BooksLibrary> booksInLibrary;
	private String libraryName;
	
	
	@RequestMapping(value = "/library")
	public String home(@RequestParam(name = "id") int id, ModelMap map) {

		booksInLibrary = booksLibraryRepository.findBooksByLibraryId(id);
		map.addAttribute("books", booksInLibrary);
		map.addAttribute("library_id", id);
		libraryName = libraryRepository.findById(id).get().getLibrary_name();
		map.addAttribute("library_name", libraryName);
		return "books";
	}

	@GetMapping(path = "/search")
	public String search(@RequestParam(name = "library") Integer id, @RequestParam(name = "name") String bookName,
			ModelMap map) {
		if(booksInLibrary == null) {
			booksInLibrary = booksLibraryRepository.findBooksByLibraryId(id);
			libraryName = libraryRepository.findById(id).get().getLibrary_name();
		}
		
		Object[] books = booksInLibrary.stream().filter(b -> b.getBook().getName().toLowerCase().contains(bookName.toLowerCase())).toArray();

		map.addAttribute("books", books);
		map.addAttribute("library_id", id);
		map.addAttribute("library_name",libraryName);
		
		return "books";

	}

	@RequestMapping("/increaseQuantity")
	public ModelAndView increaseQuantity(@RequestParam("id") long id) {

		ModelAndView model = new ModelAndView("increase");
		List<BooksLibrary> books = (List<BooksLibrary>) booksLibraryRepository.findAll();
		List<BooksLibrary> readingForAllBooks = new ArrayList<>();
		for (BooksLibrary book : books) {
			if (book.getLibrary().getLibrary_id() == id) {
				readingForAllBooks.add(book);
			}
		}

		model.addObject("library", readingForAllBooks.get(0).getLibrary().getLibrary_name());
		model.addObject("books", readingForAllBooks);

		return model;

	}

	@RequestMapping("/successfully increased")

	public ModelAndView a(@RequestParam("book") int book, @RequestParam("quantity") int quantity) {
		BooksLibrary selectedBook = booksLibraryRepository.findById(book).get();
		ModelAndView model = new ModelAndView("successfully increased");
		model.addObject("quantityBefore", selectedBook.getQuantity());
		model.addObject("quantityAfter", quantity);
		model.addObject("bookName", selectedBook.getBook().getName());
		model.addObject("bookStatus", selectedBook.getStatus());

		selectedBook.setQuantity(quantity);
		booksLibraryRepository.save(selectedBook);
		System.out.println(book);

		return model;
	}

	@RequestMapping("/selectLibrary")
	public ModelAndView selectLibrary() {

		ModelAndView model = new ModelAndView("select library");
		List<Library> libraries = (List<Library>) libraryRepository.findAll();
		model.addObject("libraries", libraries);

		return model;
	}
	
	@RequestMapping("/edit")
	public ModelAndView editBook(@RequestParam("book_id") int bookId) {
		
		ModelAndView model = new ModelAndView("bookEditing");
		
		BooksLibrary book = booksLibraryRepository.findById(bookId).get();
		model.addObject("book", book);
		
		
		return model;
	}
	
	

}