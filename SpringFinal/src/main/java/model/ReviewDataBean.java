package model;

import java.io.Serializable;

public class ReviewDataBean implements Serializable{
	private int num;
	private String isbn;
	private String id;
	private String content;
	private double rating;
	private double like_cnt;
	private String regdate;
	private String writercheck;
	private String book_subject;
	
	
	ReviewDataBean () {
		
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public double getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(double like_cnt) {
		this.like_cnt = like_cnt;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getWritercheck() {
		return writercheck;
	}
	public void setWritercheck(String writercheck) {
		this.writercheck = writercheck;
	}
	public String getBook_subject() {
		return book_subject;
	}
	public void setBook_subject(String book_subject) {
		this.book_subject = book_subject;
	}
	@Override
	public String toString() {
		return "ReviewDataBean [num=" + num + ", isbn=" + isbn + ", id=" + id + ", content=" + content + ", rating="
				+ rating + ", like_cnt=" + like_cnt + ", regdate=" + regdate + ", writercheck=" + writercheck
				+ ", book_subject=" + book_subject + "]";
	}
	
	
	public ReviewDataBean(int num, String isbn, String id, String content, double rating, double like_cnt,
			String regdate, String writercheck, String book_subject) {
		this.num = num;
		this.isbn = isbn;
		this.id = id;
		this.content = content;
		this.rating = rating;
		this.like_cnt = like_cnt;
		this.regdate = regdate;
		this.writercheck = writercheck;
		this.book_subject = book_subject;
	}
	
	public ReviewDataBean(String isbn, String content, String book_subject, double like_cnt) {
		this.isbn = isbn;
		this.content = content;
		this.book_subject = book_subject;
		this.like_cnt = like_cnt;
	}
	
	
	
	
	
	
}
