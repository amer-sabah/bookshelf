
package jo.secondstep.bookshelf.repositories;

import org.springframework.data.repository.CrudRepository;
import jo.secondstep.bookshelf.entities.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {

}
