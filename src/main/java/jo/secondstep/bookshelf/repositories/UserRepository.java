package jo.secondstep.bookshelf.repositories;


import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.User;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.User;

public interface UserRepository extends CrudRepository<User, Integer> {
    
	@Query(value = "select * from users where username like %?1%",nativeQuery = true)
	public User findUserByUserName(String userName);
	
	public Optional<User> findUserByUsername(String userName);
}