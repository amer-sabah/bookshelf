package jo.secondstep.bookshelf.entities;

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
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id",nullable = false)
	private Category category;
	@Column(name = "description")
	private String description;
	
	
	public Book( String name, String author, Double price, Category category, String description) {
		
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

	public String getName() {
		return name;
	}

	public String getAuthor() {
		return author;
	}

	public Double getPrice() {
		return price;
	}

	public Category getCategory() {
		return category;
	}

	public String getDescription() {
		return description;
	}

	public Integer getId() {
		return id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
	
}
