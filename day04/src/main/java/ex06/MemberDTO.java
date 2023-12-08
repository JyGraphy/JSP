package ex06;

public class MemberDTO {
	
	private String name;
	private String imgPath;
	
	public MemberDTO() {}
	// 생성자에 대해서 오버로딩 한다면 기본 생성자를 생성하라
	
	public MemberDTO(String name) {
		this.name = name;
		this.imgPath = "name/" + name + ".jpeg";
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		this.imgPath = "name/" + name +".jpeg";
	}
 	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	
}
