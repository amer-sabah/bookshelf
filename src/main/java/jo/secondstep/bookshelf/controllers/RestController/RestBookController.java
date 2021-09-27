package jo.secondstep.bookshelf.controllers.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jo.secondstep.bookshelf.entities.Book;
import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.repositories.BooksLibraryRepository;
import jo.secondstep.bookshelf.repositories.BooksRepository;
import jo.secondstep.bookshelf.service.*;

@RestController
@RequestMapping(path = "/RestBook")
public class RestBookController {

	@Autowired
	private BooksRepository booksRepository;
	@Autowired
	private BooksLibraryRepository booksLibraryRepository;

	@GetMapping(value = "/searchBookName")
	public List<Book> findBookByName(@RequestParam("book_name") String book_name) {

		return booksRepository.findBooksByName(book_name);
	}

	@GetMapping(value = "/searchCaregory")
	public List<Book> findBookByCaregory(@RequestParam("caregory_name") String caregory_name) {

		return booksRepository.findBooksByCaregory(caregory_name);
	}

	@GetMapping(value = "/searchLibrary")
	public List<BooksLibrary> findBookByLibrary(@RequestParam("library_name") String library_name) {

		return booksLibraryRepository.findBooksByLibrary(library_name);
	}

	@GetMapping(value = "/searchBookStatusCategory")
	public List<BooksLibrary> findBookbyStatusAndCategory(@RequestParam("category_name") String category_name,
			@RequestParam("status") String status) {

		return booksLibraryRepository.findBookbyStatusAndCategory(category_name, status);
	}

	/*
	 * @GetMapping public ResponseEntity<List<Book>>
	 * findBook(@RequestParam("book_name") String book_name) { HttpHeaders headers =
	 * new HttpHeaders(); List<Book> book =
	 * booksRepository.findBooksByName(book_name); if (book == null) { return new
	 * ResponseEntity<List<Book>>(HttpStatus.NOT_FOUND); }
	 * headers.add("Number Of Records Found", String.valueOf(book.size())); return
	 * new ResponseEntity<List<Book>>(book, headers, HttpStatus.OK); }
	 */

}