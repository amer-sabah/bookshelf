package jo.secondstep.bookshelf.repositories;

import java.time.LocalDate;
import java.util.List;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import jo.secondstep.bookshelf.entities.BuyOperations;

public interface BuyOperationsRepository extends CrudRepository<BuyOperations, Integer> {

	@Query(value = "select * from buy_operations " + "where person_id like %?1%", nativeQuery = true)
	List<BuyOperations> findAllBook(Integer person_id);

	@Modifying
	@Transactional
	@Query(value = "INSERT INTO buy_operations (buy_date, person_id, book_id) VALUES (:buy_date,:person_id,:book_id);", nativeQuery = true)
	void AddBook(@Param("person_id") int person_id,@Param("book_id") int book_id,@Param("buy_date") LocalDate buy_date);
	
	@Query(value = "select * from buy_operations b "
			+ " join books_in_library a on a.id = b.book_id "
			+ " where a.library_id = ?1 "
			+ " order by b.buy_date desc",nativeQuery = true)
	List<BuyOperations> getOperationsByLibrary(Integer libraryId);

}
