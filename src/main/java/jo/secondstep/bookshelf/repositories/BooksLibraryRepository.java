package jo.secondstep.bookshelf.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import jo.secondstep.bookshelf.entities.BooksLibrary;

public interface BooksLibraryRepository extends CrudRepository<BooksLibrary, Integer> {

	@Query(value = "select * from books_in_library where id = ?1 ", nativeQuery = true)
	BooksLibrary findBook(Integer book_id);

	@Query(value = "select * from books_in_library " + "where library_id = ?1 ", nativeQuery = true)
	public List<BooksLibrary> findBooksByLibraryId(Integer id);

	//RESTAPI
	@Query(value = "select * from books_in_library b join  books bo on bo.book_id=b.book_id \r\n"
			+ "join libraries l on b.library_id=l.library_id where library_name=?1 ", nativeQuery = true)
	public List<BooksLibrary> findBooksByLibrary(String library_name);

	@Query(value = "select * from books_in_library b join libraries \r\n"
			+ "	l on b.library_id=l.library_id join  books bo on bo.book_id=b.book_id  where bo.book_name=?1\r\n"
			+ "	", nativeQuery = true)
	public List<BooksLibrary> findLibrariesByBook(String book_name);

	@Query(value = "select * from books b join categories c on b.category_id=c.category_id join books_in_library bl on b.book_id=bl.book_id \r\n"
			+ "	where category_name=?1 and bl.status=?2", nativeQuery = true)
	public List<BooksLibrary> findBookbyStatusAndCategory(String category_name, String status);
	
	@Query(value = "select * from books_in_library where book_id = ?1",nativeQuery = true)
	public List<BooksLibrary> findByBookId(Integer id);
}
