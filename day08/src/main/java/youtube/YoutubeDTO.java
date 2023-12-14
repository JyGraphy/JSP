package youtube;

//IDX      NOT NULL NUMBER         
//CATEGORY          VARCHAR2(50)   
//TITLE    NOT NULL VARCHAR2(100)  
//TAG      NOT NULL VARCHAR2(2000) 
//IMGNAME  NOT NULL VARCHAR2(200)  



public class YoutubeDTO {
	
	private int idx;
	private String category;

	private String chtitle;
	private String title;
	private String tag;
	private String imgName;
	
	public String getChtitle() {
		return chtitle;
	}
	public void setChtitle(String chtitle) {
		this.chtitle = chtitle;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	
	
	
	
}
