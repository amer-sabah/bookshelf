package jo.secondstep.bookshelf.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jo.secondstep.bookshelf.entities.Library;
import jo.secondstep.bookshelf.entities.Permission;
import jo.secondstep.bookshelf.entities.Person;
import jo.secondstep.bookshelf.entities.User;
import jo.secondstep.bookshelf.repositories.LibraryRepository;
import jo.secondstep.bookshelf.repositories.PermissionRepository;
import jo.secondstep.bookshelf.repositories.PersonRepository;
import jo.secondstep.bookshelf.repositories.UserRepository;

@Controller
@RequestMapping(value = "library")
public class LibraryController {
	@Autowired
	LibraryRepository libraryRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	PersonRepository personRepository;
	
	@Autowired
	PermissionRepository permissionRepository;
	
	@GetMapping("/")
	public String getLibraries(ModelMap model) {
		model.addAttribute("libraries",libraryRepository.findAll());
		return "library";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("library") Library library,@ModelAttribute("owner") Person owner) {
		
		User user =new User();
		user.setUsername(owner.getEmail());
		user.setPassword(owner.getName()+"1234");
		userRepository.save(user);
		
		Permission permission=new Permission();
		permission.setUser(user);
		permission.setRole("library_owner");
		permissionRepository.save(permission);
		
		owner.setUser(user);
		personRepository.save(owner);
		
		library.setOwner(owner);
		libraryRepository.save(library);
		
		return "library";
	}

}
