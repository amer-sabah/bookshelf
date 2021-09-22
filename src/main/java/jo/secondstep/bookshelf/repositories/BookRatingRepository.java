package jo.secondstep.bookshelf.repositories;

import java.util.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import jo.secondstep.bookshelf.entities.BookRatingPK;
import jo.secondstep.bookshelf.entities.BooksRatingEntity;


@Repository
public interface BookRatingRepository extends  JpaRepository<BooksRatingEntity, BookRatingPK> {
	
//	@Query(value = "select * from book_ratings "
//			+ "where customer_id like %?1%",nativeQuery = true)
//	public static List<BooksRatingEntity> findBooksRatingById(Integer bookId) {
//		// TODO Auto-generated method stub
//		return null;
//	} 
	
}