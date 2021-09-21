package jo.secondstep.bookshelf.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.BorrowOperations;
import jo.secondstep.bookshelf.entities.BuyOperations;
import jo.secondstep.bookshelf.service.BorrowOperationsService;
import jo.secondstep.bookshelf.service.BuyOperationsService;

@Controller
@RequestMapping(value = { "History" })
public class HistoryController {
	@Autowired
	private BuyOperationsService buyOperationsService;
	@Autowired
	private BorrowOperationsService borrowOperationsService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String buyBook(@RequestParam("person_id") int person_id, ModelMap map) {
		ModelAndView model = new ModelAndView();
		List<BuyOperations> buyOperations = buyOperationsService.findAllBook(person_id);
		map.addAttribute("buyOperations", buyOperations);
		
		List<BorrowOperations> borrowOperations =borrowOperationsService.findAllBook(person_id);
		map.addAttribute("borrowOperations", borrowOperations);


		return "customerHistory";

	}

}
