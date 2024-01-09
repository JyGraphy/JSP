package ex03;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;


// 싱글톤 생성
public class FileUtil {
	private static FileUtil instance = new FileUtil();
	public static FileUtil getInstance() {
		return instance;
	}
	
	
	private FileUtil() {
		File dir = new File(saveDirectory);
		dir.mkdirs();
	}
	
	
	// 파일 처리에 관련된 필드 생성
	private String saveDirectory = "C:\\upload";  // 파일의 경로를 C드라이브로 변경
	private final int maxPostSize = 1024 * 1024 * 50;
	private final String encoding = "UTF-8";
	private final FileRenamePolicy policy = new DefaultFileRenamePolicy(); 
	
	public ReviewDTO getDTO(HttpServletRequest request) throws IOException, ParseException {
		ReviewDTO dto = null;
//		if (saveDirectory == null) {
//			ServletContext application = request.getServletContext();
//			saveDirectory = application.getRealPath("/reviewImage");

//		}	경로를 C드라이브로 변경했기 때문에 사용할 필요가 없다
		
		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy);
		
		dto = new ReviewDTO();
		dto.setContent(mpRequest.getParameter("content"));
		dto.setImage(mpRequest.getFile("image").getName());
		dto.setStoreName(mpRequest.getParameter("storeName"));
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		long time = sdf.parse(mpRequest.getParameter("visitDate")).getTime();
		dto.setVisitDate(new java.sql.Date(time));
		
		return dto;
			
		
		
	}
	
	
	
}
	