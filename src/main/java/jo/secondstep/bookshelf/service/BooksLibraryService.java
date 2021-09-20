package jo.secondstep.bookshelf.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.repositories.BooksLibraryRepository;
import jo.secondstep.bookshelf.repositories.BuyOperationsRepository;

@Service
@Transactional
public class BooksLibraryService {
	@Autowired
	BooksLibraryRepository booksLibraryRepository;
	
	 public  BooksLibrary findBook(Integer person_id, Integer book_id)
	 {
		
		return   booksLibraryRepository.findBook( book_id);
	 }

}
