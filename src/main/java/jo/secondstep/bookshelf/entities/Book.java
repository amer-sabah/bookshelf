package jo.secondstep.bookshelf.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "books")
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "book_id", nullable = false)
	private Integer id;
	@Column(name = "book_name",nullable = false)
	private String name;
	@Column(name = "author")
	private String author;
	@Column(name = "price")
	private Double price;
	@Column(name = "category")
	private String category;
	@Column(name = "description")
	private String description;
	public Book( String name, String author, Double price, String category, String description) {
		
		this.name = name;
		this.author = author;
		this.price = price;
		this.category = category;
		this.description = description;
	}
	
	public Book() {

	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author + ", price=" + price + ", category="
				+ category + ", description=" + description + "]";
	}
	
	
	
	
	
}
