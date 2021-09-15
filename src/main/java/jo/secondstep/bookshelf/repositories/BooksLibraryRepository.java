package jo.secondstep.bookshelf.repositories;

import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.BooksLibrary;

public interface BooksLibraryRepository extends CrudRepository<BooksLibrary, Integer> {

}
