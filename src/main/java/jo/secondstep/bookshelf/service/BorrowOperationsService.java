
package jo.secondstep.bookshelf.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.BorrowOperations;
import jo.secondstep.bookshelf.entities.BuyOperations;
import jo.secondstep.bookshelf.repositories.BorrowOperationRepository;

@Service
@Transactional
public class BorrowOperationsService {
	@Autowired
	BorrowOperationRepository borrowOperationsRepository;


	
	public List<BorrowOperations> findAllBook(int person_id) {

		return (List<BorrowOperations>) borrowOperationsRepository.findAllBook(person_id);
	}

}

