package jo.secondstep.bookshelf.entities;


import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable  //must put annotation here 
public class BookRatingPK implements Serializable{
	
	
	public BookRatingPK() {
		super();
	}

	private Integer customerId;

	private Integer bookId;
	
	
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

	@Override
	public String toString() {
		return "BookRatingPK [customerId=" + customerId + ", bookId=" + bookId + ", getCustomerId()=" + getCustomerId()
				+ ", getBookId()=" + getBookId() + "]";
	}

	public BookRatingPK(Integer customerId, Integer bookId) {
		super();
		this.customerId = customerId;
		this.bookId = bookId;
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





