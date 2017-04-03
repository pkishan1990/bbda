package controller;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.StudentMasterService;

@Controller
public class DashboardController {

	@Autowired
	private StudentMasterService studentMasterService;
	

@RequestMapping(value = "/dashboard.htm", method = RequestMethod.GET)
	public ModelAndView Dashboard(HttpServletRequest request,
			HttpServletResponse response) {
	
	String role =request.getSession().getAttribute("role").toString();
	Calendar calendar = Calendar.getInstance();
	//ModelAndView mv = new ModelAndView("bloodbank/Dashboard");
	//ModelAndView mv = new ModelAndView("hospital/Dashboard");
	ModelAndView mv = new ModelAndView("user/Dashboard");
	/*
	List<Object[]> Studentshavingbirthdays = this.studentMasterService.getUpcomingBirthdays();
	Map<String,List<String>> upcomingBirthdsys = new HashMap<String, List<String>>();
	for (Iterator iterator = Studentshavingbirthdays.iterator(); iterator
			.hasNext();) {
		Object[] objects = (Object[]) iterator.next();
		
		List<String> ls  = new ArrayList<String>();		
		try {
			calendar.setTime(new SimpleDateFormat("yyyy-MM-dd").parse(objects[1].toString()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ls.add(calendar.get(Calendar.DAY_OF_MONTH)+"");
		ls.add(objects[0].toString());
		ls.add(objects[2].toString());
		ls.add(objects[3].toString());
		upcomingBirthdsys.put(objects[4].toString()+"",ls);
		
	}
	
	calendar.setTime(new Date());
	calendar.add(Calendar.DATE, -2);
	Date dt = calendar.getTime() ;
	mv.addObject("bdayfrom",calendar.get(Calendar.DAY_OF_MONTH));
	mv.addObject("bdaymonth",new SimpleDateFormat("MMM").format(dt) );
	calendar.add(Calendar.DATE, 9);
	mv.addObject("bdayto",calendar.get(Calendar.DAY_OF_MONTH));
	
	mv.addObject("UpcomingDates", upcomingBirthdsys);
	*/
	return mv;
	}



//@RequestMapping(value = "/quickSearch.htm", method = RequestMethod.POST)
//public @ResponseBody
////String ValidateLeaveApplicationDates(HttpServletRequest request,
////		HttpServletResponse response) {
////	String SearchString  = request.getParameter("searchString");
////	System.out.println(SearchString +  "  searching...");
////	List<Object[]> searchResultObject = this.studentMasterService.searchThisData(SearchString);
////	String jsonstr = new Gson().toJson(searchResultObject);
////	System.out.println(jsonstr +  "  searchResultObject");
//	return null;
//	
//}

}
