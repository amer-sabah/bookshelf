package jo.secondstep.bookshelf.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jo.secondstep.bookshelf.entities.Person;
import jo.secondstep.bookshelf.repositories.PersonRepository;

@Service
@Transactional
public class PersonService {

	@Autowired
	PersonRepository personRepository;

	public Person findById(int person_id) {

		return personRepository.findById(person_id).orElse(null);
	}

}