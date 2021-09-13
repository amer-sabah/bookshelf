package jo.secondstep.bookshelf.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "books_in_library")
public class BooksLibrary {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@ManyToOne(targetEntity = Library.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "library_id")
	private Library library;
	@ManyToOne(targetEntity = Book.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "book_id")
	private Book book;

	private int quantity;
	private String status;
	@Override
	public String toString() {
		return "BooksLibrary [id=" + id + ", library=" + library + ", book=" + book + ", quantity=" + quantity
				+ ", status=" + status + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Library getLibrary() {
		return library;
	}

	public void setLibrary(Library library) {
		this.library = library;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

}
