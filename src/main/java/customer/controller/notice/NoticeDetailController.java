package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeDetailController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("NoticeDetailController");
		String seq=request.getParameter("c");

		NoticeDao dao=new NoticeDao();
		Notice n=dao.getNotice(seq);
		
		
//		forward
		request.setAttribute("n", n);
		request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
		
		
	}
	
}
