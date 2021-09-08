package jo.secondstep.bookshelf.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {

	@RequestMapping("/")
	public String home() {

		return "index";
	}

}