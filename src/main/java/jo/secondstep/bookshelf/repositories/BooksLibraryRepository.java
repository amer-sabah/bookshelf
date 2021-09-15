package jo.secondstep.bookshelf.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import jo.secondstep.bookshelf.entities.BooksLibrary;

public interface BooksLibraryRepository  extends CrudRepository<BooksLibrary, Integer> {

	@Query(value = "select * from books_in_library where id =?1", nativeQuery = true)
	BooksLibrary findBook(Integer book_id);

}
