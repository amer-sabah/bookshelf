
package jo.secondstep.bookshelf.repository;

import org.springframework.data.repository.CrudRepository;
import jo.secondstep.bookshelf.entity.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {

}
