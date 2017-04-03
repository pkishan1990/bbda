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
	ModelAndView mv = null;
	
	
	if(role.equalsIgnoreCase("bloodbank")){
		mv = new ModelAndView("bloodbank/Dashboard");
	}else if (role.equalsIgnoreCase("user")) {
		mv =new ModelAndView("user/Dashboard");
	}else if (role.equalsIgnoreCase("hospital")) {
		mv = new ModelAndView("hospital/Dashboard");
	}

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
