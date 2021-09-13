package jo.secondstep.bookshelf.entities;


import javax.persistence.CascadeType;
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
@Table(name="libraries")
public class Library {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer library_id;
	
	@Column(name="library_name",nullable = false)
	String library_name;
	
	@Column(name="location")
	String location;
	
	@Column(name="description")
	String description;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="owner_id")
	Person owner;

	public Integer getLibrary_id() {
		return library_id;
	}

	public void setLibrary_id(Integer library_id) {
		this.library_id = library_id;
	}

	public String getLibrary_name() {
		return library_name;
	}

	public void setLibrary_name(String library_name) {
		this.library_name = library_name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Person getOwner() {
		return owner;
	}

	public void setOwner(Person owner) {
		this.owner = owner;
	}

	

	
	
	
	
}
