package jo.secondstep.bookshelf.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
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
	@ManyToOne(targetEntity = Category.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "category_id")
	private Category category;
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

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
	
	
	
	
	
}
