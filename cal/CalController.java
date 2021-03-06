package cal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.MemberDto;
import util.UtilEx;

@WebServlet("/cal")
public class CalController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doProcess(req, resp);
	}
	
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("CalController success");
		//req.setCharacterEncoding("utf-8");
		
		String param = req.getParameter("param");
		
		if(param.equals("calendarlist")) {
			
			//사용자 정보 호출
			HttpSession session =  req.getSession();
			
			RequestDispatcher dispatch = null;

			
			MemberDto mem = (MemberDto)session.getAttribute("login");	
					
			System.out.println("calerdar SERVLET1");
			Calendar cal = Calendar.getInstance();
			//Calendar cal = new GregorianCalendar();

			cal.set(Calendar.DATE, 1); //2021/03/19 - > 2021/03/01
			
			String syear = req.getParameter("year");
			String smonth = req.getParameter("month");
			
			System.out.println("calerdar SERVLET2");
			int year = cal.get(Calendar.YEAR);
			if(UtilEx.nvl(syear) == false){
				//파라미터가 넘어와서 syear에 값이 있는경우
				year = Integer.parseInt(syear);
			}
			int month = cal.get(Calendar.MONTH) + 1;
			if(UtilEx.nvl(smonth) == false){
				month = Integer.parseInt(smonth);
				System.out.println("오류잡기"+month);
			}
			
			if(month < 1 ){
				month = 12;
				year--;
			}
			if(month > 12){
				month = 1;
				year++;
			}
			
			cal.set(year, month-1, 1); //연 월 일 세팅 완료
			System.out.println("오류확인달" + year);
			//요일
			int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
			
			// << year--
			String pp = String.format("<a href='%s&year=%d&month=%d'>"
									+	"<img src = 'image/left.gif'></a>",
									"cal?param=calendarlist", year-1, month);
			// < month--
			String p =  String.format("<a href='%s&year=%d&month=%d'>"
					+	"<img src = 'image/prec.gif'></a>",
					"cal?param=calendarlist", year, month-1);
			// > month++
			String n =  String.format("<a href='%s&year=%d&month=%d'>"
					+	"<img src = 'image/next.gif'></a>",
					"cal?param=calendarlist", year, month+1);
			// >> year++
			String nn = String.format("<a href='%s&year=%d&month=%d'>"
					+	"<img src = 'image/last.gif'></a>",
					"cal?param=calendarlist", year+1, month);
			
			System.out.println("달력출력");
			
			CalendarDao dao = CalendarDao.getInstance();
			List<CalendarDto> list = 
					dao.getCalendarList(mem.getId(), year + UtilEx.two(month + ""));
			//컨트롤러로 이동시 파라미터로 리스트를 받는다
			System.out.println("calerdar SERVLET3");
			
			//System.out.println("년도확인=" + year + month + dayOfWeek + "");
			//System.out.println(cal);
			//System.out.println("리스트 캘린터 출력" + list);
			//System.out.println(n + nn + p + pp);
			req.setAttribute("cal", cal);
			
			
			req.setAttribute("year", year);
			req.setAttribute("month", month);
			
			String dayOfWeek1 = dayOfWeek + "";
			//System.out.println("dayOfWeek1" + dayOfWeek1);
			
			req.setAttribute("dayOfWeek", dayOfWeek1);
			
			req.setAttribute("list",list);
			req.setAttribute("pp", pp);
			
			req.setAttribute("p", p);
			req.setAttribute("nn", nn);
			req.setAttribute("n", n);
			req.setAttribute("result", "오류확인");
			
			System.out.println(n);
			
			System.out.println("calerdar SERVLET4");
			
			
			req.getRequestDispatcher("calendarlist.jsp").forward(req, resp);
			//resp.sendRedirect("calendarlist.jsp");
			//dispatch = req.getRequestDispatcher("calendarlist.jsp");
			//dispatch.forward(req, resp);

		}else if(param.equals("calwrite")) {
			
			System.out.println("schedulwrite 1");

			
			HttpSession session =  req.getSession();
			MemberDto mem = (MemberDto)session.getAttribute("login");	
			
			String year = req.getParameter("year");
			String month = req.getParameter("month");
			String day = req.getParameter("day");
			String senddate = req.getParameter("enddate");
			
		    String enddate = "";
		    if(senddate!=null && !senddate.equals("")) {
		    	enddate = senddate;
		    }
		    
		    req.setAttribute("year", year);
			req.setAttribute("month", month);
			req.setAttribute("day", day);
			req.setAttribute("enddate", enddate);	
			
			Calendar cal = Calendar.getInstance();
			
			int tyear = cal.get(Calendar.YEAR);
			int tmonth = cal.get(Calendar.MONTH) + 1;
			int tday = cal.get(Calendar.DATE);
			int thour = cal.get(Calendar.HOUR_OF_DAY);
			int tmin = cal.get(Calendar.MINUTE);
			
			List<Integer> date = new ArrayList<Integer>();
			
			date.add(tyear);
			date.add(tmonth);
			date.add(tday);
			date.add(thour);
			date.add(tmin);
			
			req.setAttribute("date", date);
		
		}else if(param.equals("schedulwriteAf")) {
				System.out.println("schedulwriteAf 1");
				
			/*
			 * // schedul을 위한 부분 String year = req.getParameter("syear"); String month =
			 * req.getParameter("smonth"); String day = req.getParameter("sday");
			 * 
			 * System.out.println("syear = " + year + "smonth = " + month + "sday = " +
			 * day);
			 * 
			 * String startdate = "" + year + "/" + UtilEx.two(month) + "/" +
			 * UtilEx.two(day);
			 * 
			 * System.out.println("startdate = " + startdate);
			 * 
			 * CalendarDto dto = new CalendarDto
			 * 
			 * CalendarDao dao = CalendarDao.getInstance(); boolean b =
			 * dao.addSchedule(choicebooknum, membernum, startdate, enddate);
			 * 
			 * if(b) { System.out.println("일정을 성공적을 추가하였습니다"); }
			 * resp.sendRedirect("schedule?param=calendarlist&membernum=" + membernum);
			 */
			
	


			
		}else if(param.equals("caldelete")) {
	         System.out.println("scheduldelete 1");
	         
	         int calseq = (Integer.parseInt(req.getParameter("seq")));
	         
	         System.out.println("calseq = " + calseq);
	                   
	          CalendarDao dao = CalendarDao.getInstance();
	          
	         dao.deletecal(calseq);
	          
	          resp.sendRedirect("message.jsp?msg=scheduldelete");
		}
	}
	
	public void forward(String arg, HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		RequestDispatcher dispatch = req.getRequestDispatcher(arg);
		dispatch.forward(req, resp);			
	}
	


}//class close


