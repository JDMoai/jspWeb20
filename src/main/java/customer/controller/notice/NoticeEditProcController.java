package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeEditProcController implements Controller{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("NoticeEditProcController");
		
		request.setCharacterEncoding("utf-8");
		String seq=request.getParameter("c");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		Notice n=new Notice();
		n.setSeq(seq);
		n.setTitle(title);
		n.setContent(content);

		NoticeDao dao=new NoticeDao();
		dao.update(n);


		request.setAttribute("n", n);
		//request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
		request.getRequestDispatcher("noticeDetail.do?c="+seq).forward(request, response);
	}
}
