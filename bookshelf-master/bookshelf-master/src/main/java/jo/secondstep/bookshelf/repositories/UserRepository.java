package jo.secondstep.bookshelf.repositories;


import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.User;

public interface UserRepository extends CrudRepository<User, Integer> {

}
