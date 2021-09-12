
package jo.secondstep.bookshelf.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import jo.secondstep.bookshelf.entity.Customer;
import jo.secondstep.bookshelf.repository.CustomerRepository;

@Service
@Transactional
public class CustomerService {
	@Autowired
	CustomerRepository customerRepository;

	public List<Customer> getAllCustomer() {

		return (List<Customer>) customerRepository.findAll();
	}
}
