package jo.secondstep.bookshelf.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.Book;
import jo.secondstep.bookshelf.entities.BuyOperations;

public interface BooksRepository extends CrudRepository<Book, Integer> {

	@Query(value = "select * from books " + "where book_name like %?1%", nativeQuery = true)
	public List<Book> findBooksByName(String bookName);
        
       @Query(value = "select * from books ",nativeQuery = true)
	public List<Book> findAll();
	
	@Query(value = "select * from books "
			+ "where  book_id like %?1%",nativeQuery = true)
	public Book findBookById(int id);
	// RestAPI
	// @Query(value = "select name,author,price,description,category.name from Book
	// where name=?1")
	// public List<Book> findBookByName(String book_name);

	@Query(value = "select * from  books b join categories c on c.category_id=b.category_id where c.category_name =?1 ", nativeQuery = true)
	public List<Book> findBooksByCaregory(String caregory_name);

}
