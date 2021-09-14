package jo.secondstep.bookshelf.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.Library;

public interface LibraryRepository extends CrudRepository<Library, Integer> {
	@Query(value = "SELECT * FROM libraries "
		       + "WHERE library_id like %?1%" ,nativeQuery = true)
	public List<Library> findLibraryByName(String name);
	
	@Query(value = "SELECT * FROM libraries "
		       + "WHERE location like %?1%" ,nativeQuery = true)
	public List<Library> findLibraryByLocation(String location);
	
	@Query(value = "SELECT * FROM persons , libraries "
		       + "WHERE persons.person_id=libraries.owner_id AND name like %?1%" ,nativeQuery = true)
	public List<Library> findLibraryByOwnerNmae(String ownerName);
}
