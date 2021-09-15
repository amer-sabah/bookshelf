package jo.secondstep.bookshelf.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import jo.secondstep.bookshelf.entities.BooksLibrary;

public interface BooksLibraryRepository extends CrudRepository<BooksLibrary, Integer> {

	
	@Query(value = "select * from books_in_library "
			+ "where library_id = ?1",nativeQuery = true)
	public List<BooksLibrary> findBooksByLibraryId(Integer id);
}
