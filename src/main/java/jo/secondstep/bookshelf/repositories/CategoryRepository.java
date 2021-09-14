package jo.secondstep.bookshelf.repositories;

import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {

}
