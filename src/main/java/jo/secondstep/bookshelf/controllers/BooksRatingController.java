package jo.secondstep.bookshelf.controllers;


import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jo.secondstep.bookshelf.DTO.BooksRatingDto;
import jo.secondstep.bookshelf.entities.Book;
import jo.secondstep.bookshelf.entities.BookRatingPK;
import jo.secondstep.bookshelf.entities.BooksRatingEntity;
import jo.secondstep.bookshelf.entities.Person;
import jo.secondstep.bookshelf.repositories.BookRatingRepository;
import jo.secondstep.bookshelf.repositories.PersonRepository;


@Controller
@RequestMapping(value = "bookRating")
public class BooksRatingController {

	@Autowired
	private BookRatingRepository bookRepo;
	
	@Autowired
	private PersonRepository personRepo;
	
	//@Autowired
	//private Person personRepo;
	
	//@Autowired 
	//private BooksRepository bookRepo1;
	
	@GetMapping("/")
    public String home(Model model) {
		model.addAttribute("booksRatingDto" , new BooksRatingDto());
	     return "bookRating";
   }
	 
	
	 
	
	 @RequestMapping(method = RequestMethod.POST)
	 
	public <S> String submit(Model model, @ModelAttribute("booksRatingDto") BooksRatingDto bookRating  , @RequestParam(value="book_id") int book_id){
	//System.out.println("Leeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeen");
	List<Person> persons = (List<Person>) personRepo.findAll();
	

	Random rand = new Random();
	int randomId = rand.nextInt(persons.size());

	BookRatingPK bookRatingPK = new BookRatingPK();
		bookRatingPK.setCustomerId(persons.get(randomId).getPerson_id());
		bookRatingPK.setBookId(book_id);
		
		BooksRatingEntity booksRatingEntity = new BooksRatingEntity();
		
		booksRatingEntity.setId(bookRatingPK);
		int r = bookRating.getRate();
		if (r>5)
			{
			r=5;    
			booksRatingEntity.setRate(r);
			}
		else if (r>1) {
			r=1;
			booksRatingEntity.setRate(r);
		}
		
		else { booksRatingEntity.setRate(r); }
		booksRatingEntity.setFeedback(bookRating.getFeedback());

		//System.out.println(booksRatingEntity.getFeedback());
		//System.out.println(booksRatingEntity.getRate());
		
		BooksRatingEntity sooksRatingEntity =bookRepo.save(booksRatingEntity);
		//System.out.println(sooksRatingEntity.getFeedback());
		//System.out.println(sooksRatingEntity.getRate());

	    
		return "bookRating";
	}
	
}
