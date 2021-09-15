package jo.secondstep.bookshelf.entities;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "buy_operations")
public class BuyOperations {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "buy_date")
	private LocalDate buy_date;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "person_id")
	private Person person;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "book_id")
	private BooksLibrary booksLibrary;
    
	
	BuyOperations ()
	{
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(LocalDate buy_date) {
		this.buy_date = buy_date;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public BooksLibrary getBooksLibrary() {
		return booksLibrary;
	}

	public void setBooksLibrary(BooksLibrary booksLibrary) {
		this.booksLibrary = booksLibrary;
	}

	@Override
	public String toString() {
		return "BuyOperations [id=" + id + ", buy_date=" + buy_date + ", person=" + person + ", booksLibrary="
				+ booksLibrary + "]";
	}

	public BuyOperations (LocalDate buy_date,Person person,BooksLibrary booksLibrary)
	{this.person = person;
	this.buy_date = buy_date;
	this.booksLibrary = booksLibrary;
	}

}
