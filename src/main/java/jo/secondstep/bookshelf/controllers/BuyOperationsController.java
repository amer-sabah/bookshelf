package jo.secondstep.bookshelf.controllers;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.service.BooksLibraryService;
import jo.secondstep.bookshelf.service.BuyOperationsService;

@Controller
@RequestMapping(value = { "Buying", "" })
public class BuyOperationsController {

	@Autowired
	private BuyOperationsService buyOperationsService;
	@Autowired
	private BooksLibraryService booksLibraryService;

	@RequestMapping("/")
	public String display() {
		return "index";
	}

	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public ModelAndView buyBook(@RequestParam("person_id") int person_id, @RequestParam("book_id") int book_id) {
		ModelAndView model = new ModelAndView();
		BooksLibrary booksLibrary = booksLibraryService.findBook(person_id, book_id);

		model.addObject("buy", booksLibrary);
		model.setViewName("buy");

		return model;

	}

	@RequestMapping(value = "/Add", method = RequestMethod.GET)
	public ModelAndView addBook(@RequestParam("person_id") int person_id, @RequestParam("book_id") int book_id) {
		ModelAndView model = new ModelAndView();
		LocalDateTime localDateTime = LocalDateTime.now();
		LocalDate buy_date = localDateTime.toLocalDate();
		buyOperationsService.AddBook(person_id, book_id, buy_date);
       //buying?person_id=person_id;
		return new ModelAndView("redirect:/");

	}

}
