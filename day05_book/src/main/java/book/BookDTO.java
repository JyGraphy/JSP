package book;

public class BookDTO {
	// 추가한 이후 마지막으로 추가된 객체의 idx가 몇번인지 확인하는 기능
	private static int seq = 0;
	
	public static int getSeq() {
		return seq;
	}
	public static void setSeq(int seq) {
		BookDTO.seq = seq;
	}
	
	private int idx;


	private String title;
	private String author;
	private String publisher;
	private String publishDate;
	
	public BookDTO() {
		// TODO Auto-generated constructor stub
		// 객체를 생성할 때 마다 시퀀스가 증가하면서 idx에 대입된다
		this.idx = ++seq;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}

	


	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	
	public String getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}


	
}
