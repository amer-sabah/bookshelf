package jo.secondstep.bookshelf.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "borrow_operations")
public class BorrowOperations{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@Column(name = " number_of_borrow_days")
	private int number_of_borrow_days;
	
	@Column(name = "accept")
	private LocalDate acccept;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="customer_id")
	Person customer;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="book_id")
	BooksLibrary book;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumber_of_borrow_days() {
		return number_of_borrow_days;
	}

	public void setNumber_of_borrow_days(int number_of_borrow_days) {
		this.number_of_borrow_days = number_of_borrow_days;
	}

	public LocalDate getAcccept() {
		return acccept;
	}

	public void setAcccept(LocalDate acccept) {
		this.acccept = acccept;
	}

	public Person getCustomer() {
		return customer;
	}

	public void setCustomer(Person customer) {
		this.customer = customer;
	}

	public BooksLibrary getBook() {
		return book;
	}

	public void setBook(BooksLibrary book) {
		this.book = book;
	}

	@Override
	public String toString() {
		return "BorrowOperation [id=" + id + ", number_of_borrow_days=" + number_of_borrow_days + ", acccept=" + acccept
				+ ", customer=" + customer + ", book=" + book + "]";
	}

	
	
	
	
}
