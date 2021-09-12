package jo.secondstep.bookshelf.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import jo.secondstep.bookshelf.entity.Customer;
import jo.secondstep.bookshelf.service.CustomerService;
@RequestMapping("/customers")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/all")
	public ModelAndView getAllCustomer(){

		ModelAndView model = new ModelAndView();
		List<Customer> customers = customerService.getAllCustomer();

		model.addObject("customer", customers);

		return model;
	}

}
