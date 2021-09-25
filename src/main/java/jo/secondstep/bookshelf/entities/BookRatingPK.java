package jo.secondstep.bookshelf.entities;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Embeddable  //must put annotation here 
public class BookRatingPK implements Serializable{
	
	
	@Column(name="customer_id")
	private Integer customerId;

	@Column(name="book_id")
	private Integer bookId;
	
	
	
	/*@ManyToOne
	@JoinColumn(name="book_id"  , referencedColumnName="book_id")
	private Book bookId;
	
	
	@ManyToOne
	@JoinColumn(name="customer_id" , referencedColumnName="person_id")
	private Person cusromerId;


	public Book getBookId() {
		return bookId;
	}


	public void setBookId(Book bookId) {
		this.bookId = bookId;
	}


	public Person getCusromerId() {
		return cusromerId;
	}


	public void setCusromerId(Person cusromerId) {
		this.cusromerId = cusromerId;
	}

	
	
	
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bookId == null) ? 0 : bookId.hashCode());
		result = prime * result + ((cusromerId == null) ? 0 : cusromerId.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BookRatingPK other = (BookRatingPK) obj;
		if (bookId == null) {
			if (other.bookId != null)
				return false;
		} else if (!bookId.equals(other.bookId))
			return false;
		if (cusromerId == null) {
			if (other.cusromerId != null)
				return false;
		} else if (!cusromerId.equals(other.cusromerId))
			return false;
		return true;
	}*/
	
	
	
	
	
	
	
	

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Integer getBookId() {
		return bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	
	
	
	
	

	public BookRatingPK() {
		super();
	}
	
	
	
	
	
	public BookRatingPK(Integer customerId, Integer bookId) {
		super();
		this.customerId = customerId;
		this.bookId = bookId;
	}

	
	
	
	
	
	
	@Override
	public String toString() {
		return "BookRatingPK [customerId=" + customerId + ", bookId=" + bookId + ", getCustomerId()=" + getCustomerId()
				+ ", getBookId()=" + getBookId() + "]";
	}

	

	@Override
	public int hashCode() {
		int result = bookId.hashCode();
        result = 31 * result + customerId.hashCode();
        return result;

	}

	@Override
	public boolean equals(Object o) {
		
		if (this == o) return true;
		        if (o == null || getClass() != o.getClass()) return false;

		        BookRatingPK that = (BookRatingPK) o;

		        if (!bookId.equals(that.bookId)) return false;
		        return customerId.equals(that.customerId);

	}
	
	
}





