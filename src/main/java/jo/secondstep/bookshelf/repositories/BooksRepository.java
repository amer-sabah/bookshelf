package jo.secondstep.bookshelf.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.Book;

public interface BooksRepository extends CrudRepository<Book, Integer> {

	@Query(value = "select * from books "
			+ "where book_name like %?1%",nativeQuery = true)
	public List<Book> findBooksByName(String bookName);
	
	@Query(value = "select * from books ",nativeQuery = true)
	public List<Book> findAll();
	
	
	@Query(value = "select * from books "
			+ "where  book_id like %?1%",nativeQuery = true)
	public Book findBookById(int id);
}
