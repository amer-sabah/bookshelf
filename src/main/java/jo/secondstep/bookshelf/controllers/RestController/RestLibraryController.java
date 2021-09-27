package jo.secondstep.bookshelf.controllers.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jo.secondstep.bookshelf.entities.BooksLibrary;
import jo.secondstep.bookshelf.entities.Library;
import jo.secondstep.bookshelf.repositories.BooksLibraryRepository;
import jo.secondstep.bookshelf.repositories.LibraryRepository;

@RestController
@RequestMapping(path = "/RestLibrary")
public class RestLibraryController {

	@Autowired
	private LibraryRepository libraryRepository;
	@Autowired
	private BooksLibraryRepository booksLibraryRepository;

	@GetMapping(value = "/searchLibraryName")
	public List<Library> findLibraryByName(@RequestParam("library_name") String library_name) {

		return libraryRepository.findLibraryByName(library_name);
	}

	@GetMapping(value = "/searchLibraryLocation")
	public List<Library> findLibraryByLocation(@RequestParam("location") String location) {

		return libraryRepository.findLibraryByLocation(location);
	}

	@GetMapping(value = "/searchLibraryOwner")
	public List<Library> findLibraryByLocationOwner(@RequestParam("owner_name") String owner_name) {

		return libraryRepository.findLibraryByOwnerNmae(owner_name);
	}

	@GetMapping(value = "/searchLibraryStatus")
	public List<Library> findLibraryByLocationStatus(@RequestParam("status") String status) {

		return libraryRepository.findLibraryByStatus(status);
	}

	@GetMapping(value = "/searchLibraryBook")
	public List<BooksLibrary> findLibraryByBook(@RequestParam("book_name") String book_name) {

		return booksLibraryRepository.findLibrariesByBook(book_name);
	}

}
