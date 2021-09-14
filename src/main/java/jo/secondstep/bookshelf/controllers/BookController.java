package jo.secondstep.bookshelf.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jo.secondstep.bookshelf.repositories.BooksRepository;

@Controller
@RequestMapping(value = "book")
public class BookController {

	@Autowired
	private BooksRepository booksRepository;

	@RequestMapping(value = "/")
	public String home(ModelMap map) {

		map.addAttribute("books", booksRepository.findAll());
		return "books";
	}

	@GetMapping(path = "/search")
	public String search(@RequestParam(name = "name") String bookName,ModelMap map) {

		map.addAttribute("books", booksRepository.findBooksByName(bookName));

		return "search";

	}

}