package fileupload;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/13FileUpload/UploadProcess.do")
@MultipartConfig(    //서블릿 구성 어노테이션 무조건 있어야함!!
		maxFileSize = 1024 * 1024 * 1, //전송하는 파일의 사이즈
		maxRequestSize = 1024 * 1024 * 10 //첨부파일의 최대용량을 지정
		)
public class UploadProcess extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String saveDirectory = getServletContext().getRealPath("/Uploads");
			String originalFileName = fileUtil.uploadFile(req, saveDirectory);
			String savedFileName = fileUtil.renameFile(saveDirectory, originalFileName);
			insertMyFile(req, originalFileName, savedFileName);
			resp.sendRedirect("FileList.jsp");
			}
			catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("errorMessege", "파일 업로드 오류");
				req.getRequestDispatcher("FileUploadMain.jsp").forward(req, resp);
			}
	}
	
	private void insertMyFile(HttpServletRequest req, String oFileName, String sFileName) {
		String title = req.getParameter("title");
		String[] cateArray = req.getParameterValues("cate");
		StringBuffer cateBuf = new StringBuffer();
		if (cateArray == null) {
			cateBuf.append("선택한 항목 없음");
		}
		else {
			for (String s : cateArray) {
				cateBuf.append(s +", ");
				}
		}

		MyFileDTO dto = new MyFileDTO();
		dto.setTitle(title);
		dto.setCate(cateBuf.toString());
		dto.setOfile(oFileName);
		dto.setSfile(sFileName);
		
		MyFileDAO dao = new MyFileDAO();
		dao.insertFile(dto);
		dao.close();
	}
	
	
	
}
