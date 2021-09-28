package jo.secondstep.bookshelf.tags;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

public class Footer extends RequestContextAwareTag {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doFinally() {
		JspWriter out = pageContext.getOut();
		try {
			String jspPage = "../tags/footerTag.jsp";
			HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
			request.getRequestDispatcher(jspPage);
			pageContext.include(jspPage);
		} catch (Exception e) {
			try {
				out.print(e.getMessage());
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
	}

	@Override
	protected int doStartTagInternal() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
