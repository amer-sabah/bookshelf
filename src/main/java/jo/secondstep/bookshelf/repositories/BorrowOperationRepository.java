package jo.secondstep.bookshelf.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import jo.secondstep.bookshelf.entities.BorrowOperations;

public interface BorrowOperationRepository extends CrudRepository<BorrowOperations,Integer> {

	@Query(value = "select * from borrow_operations, persons"
			+ "where customer_id=person_id and name like %?1%",nativeQuery = true)
	public List<BorrowOperations> findBorrowOperationByCustomerName (String customerName);
	
	@Query(value="select * from borrow_operations where id  like %?1%",nativeQuery = true)
	public BorrowOperations findBorrowOperationsById(int id);
	
	@Query(value = "select * from borrow_operations where accept is null",nativeQuery = true)
	public List<BorrowOperations> findBorrowOperationsByAccept();
}
