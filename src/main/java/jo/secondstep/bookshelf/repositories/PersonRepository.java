package jo.secondstep.bookshelf.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.Person;

public interface PersonRepository extends CrudRepository<Person, Integer> {
  
    
    @Query(value = "SELECT * FROM persons "
		       + "WHERE person_id like %?1%" ,nativeQuery = true)
 public Person findPersonById(int personID);
	
	@Query(value = "SELECT * FROM users , persons "
		       + "WHERE users.user_id=persons.user_id AND username like %?1%" ,nativeQuery = true)
 public Person findPersonByUsername(String username);
}
