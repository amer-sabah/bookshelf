package jo.secondstep.bookshelf.controllers;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.BuyOperations;
import jo.secondstep.bookshelf.entities.Person;
import jo.secondstep.bookshelf.repositories.BooksRepository;
import jo.secondstep.bookshelf.service.BooksLibraryService;
import jo.secondstep.bookshelf.service.BuyOperationsService;
import jo.secondstep.bookshelf.service.PersonService;

@Controller
@RequestMapping(value = { "Buying", "" })
public class BuyOperationsController {

	@Autowired
	private BuyOperationsService buyOperationsService;
	@Autowired
	private BooksLibraryService booksLibraryService;
	@Autowired
	PersonService personService;
	@Autowired
	private BookRatingRepository bookRatingRepository;
	@Autowired
	private BooksRepository booksRepository;
	

	
	@RequestMapping("/")
	public String display(ModelMap map) {
		map.addAttribute("popularBooks",  booksRepository.findAll().stream().filter(b-> b.getId() %5 ==1).limit(4).toArray());
		map.addAttribute("newBooks",  booksRepository.findAll().stream().filter(b-> b.getId() %3 ==0).limit(4).toArray());
		return "index";
	}

	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public ModelAndView buyBook(@RequestParam("person_id") int person_id, @RequestParam("book_id") int book_id) {
		ModelAndView model = new ModelAndView();
		BooksLibrary booksLibrary = booksLibraryService.findBook(person_id, book_id);

		model.addObject("buy", booksLibrary);

    
		model.addObject("bookRatingRepository", bookRatingRepository);

		model.setViewName("buy");

		return model;

	}

	@RequestMapping(value = "/Add", method = RequestMethod.GET)
	public ModelAndView addBook(@RequestParam("person_id") int person_id, @RequestParam("book_id") int book_id) {
		ModelAndView model = new ModelAndView();
		LocalDateTime localDateTime = LocalDateTime.now();
		LocalDate buy_date = localDateTime.toLocalDate();
		// buyOperationsService.AddBook(person_id, book_id, buy_date);

		BooksLibrary booksLibrary = booksLibraryService.findBook(person_id, book_id);

		Person person = personService.findById(person_id);

		BuyOperations buyOperations = new BuyOperations(buy_date, person, booksLibrary);
		buyOperationsService.save(buyOperations);

		// buying?person_id=person_id;
		return new ModelAndView("redirect:/");

	}

}
