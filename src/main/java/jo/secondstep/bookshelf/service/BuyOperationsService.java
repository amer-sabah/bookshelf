package jo.secondstep.bookshelf.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.BuyOperations;
import jo.secondstep.bookshelf.repositories.BuyOperationsRepository;

@Service
@Transactional
public class BuyOperationsService {
	@Autowired
	BuyOperationsRepository buyOperationsRepository;

	public List<BuyOperations> getAllBuyOperation() {

		return (List<BuyOperations>) buyOperationsRepository.findAll();
	}

	public List<BuyOperations> findAllBook(int person_id) {

		return (List<BuyOperations>) buyOperationsRepository.findAllBook(person_id);
	}

	public void AddBook(int person_id, int book_id, LocalDate buy_date) {
		// TODO Auto-generated method stub
		buyOperationsRepository.AddBook(person_id, book_id, buy_date);
	}
	
	public void save(BuyOperations buyOperations) {
		// TODO Auto-generated method stub
		buyOperationsRepository.save(buyOperations);
	}
}