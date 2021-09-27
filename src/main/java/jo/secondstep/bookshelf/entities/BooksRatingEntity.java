package jo.secondstep.bookshelf.entities;

import java.io.Serializable;

import javax.persistence.Column;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;


//one book has multiple ratings 
//each customer can rate multi ratings 


@Entity(name="book_ratings")
public class BooksRatingEntity implements Serializable{


	
	@EmbeddedId
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private BookRatingPK  bookRatingId;
	
	@Column(name="rate")
	private Integer rate;
	
	
	@Column(name="feedback")
	private String feedback;
	
	
	

	 
	
	
	
	
	
	
	public BooksRatingEntity()
	{
		
	}
	
	public BooksRatingEntity(BookRatingPK id, Integer rate, String feedback) {
		//super();
		bookRatingId = id;
		this.rate = rate;
		this.feedback = feedback;
	}


	public BookRatingPK getId() {
		return bookRatingId;
	}


	public void setId(BookRatingPK id) {
		bookRatingId = id;
	}


	public Integer getRate() {
		return rate;
	}


	public void setRate(Integer rate) {
		this.rate = rate;
	}


	public String getFeedback() {
		return feedback;
	}


	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}


	@Override
	public String toString() {
		return "BookRating [Id=" + bookRatingId + ", rate=" + rate + ", feedback=" + feedback + "]";
	}
	
	
}
	
/*	
 * 
 * /*
	@Id 
	@Column(name = "book_id", nullable = false)
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "book_id",nullable = false)
	private Book bookId;
	
	
	@Id 
	@Column(name = "person_id", nullable = false)
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "person_id" , nullable = false)
	private Person customerId;
	
	*/

	
/*	
public void BookRatings( Integer rate , String feedback) {
		
		this.rate = rate;
		this.feedback = feedback;
		
	}
	
	

	@Override
	public String toString() {
		return "BookRating [bookID=" + bookId + ", customerID=" + customerId + ", rates=" + rate + ", feedbacks=" + feedback +"]";
	}

	public String getFeedback() {
		return feedback;
		
	}
	
	public Integer getRatings()
	{
		return rate;
	}
	*/



