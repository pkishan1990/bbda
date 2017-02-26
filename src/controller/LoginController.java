package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import service.LoginService;
import entity.Usermaster;
import filter.MultiTenantConnectionProviderImpl;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	

	
	protected final Log logger = LogFactory.getLog(getClass());
	
	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	@RequestMapping(value = "/checkCredentials.htm", method = RequestMethod.POST)
	public ModelAndView checkCredentials(HttpServletRequest request,
			HttpServletResponse response) {
		String userId = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("In login contoller user: "+userId+" Pass: "+password);
		ModelAndView mv = new ModelAndView("master/NewLogin");
		List<Usermaster> ls = loginService.getUser(userId, password);
		String msg = "";
		Usermaster usermaster = this.loginService.getUserMaster(userId,password);
		try {
			if(usermaster.getFirstname().isEmpty() || usermaster.getFirstname().equals(null)){
			msg= "Login Failed";	
			}else{
				msg="-1";			}
		} catch (NullPointerException e1) {
			// TODO Auto-generated catch block
		
		}
		System.out.println(""+msg);
		if (ls.size() == 1 && msg.equals("-1")) {

			DateFormat dateFormat1 = new SimpleDateFormat("HH:mm:ss");
			Date date = new Date();

			String SysTime = dateFormat1.format(date);
			usermaster.setLogindate(date);
			usermaster.setLogintime(SysTime);
			//this.loginService.updateUserMaster(usermaster);
			// request.getSession().setMaxInactiveInterval(2*60);//Session Will
			// Expire After Ten Minutes
			request.getSession().setAttribute("userName",ls.get(0).getUsername());
			Cookie samplecookie = new Cookie("SampleCookie", usermaster.getUsername());
			response.addCookie(samplecookie);
			try {
				response.sendRedirect(request.getContextPath() + "/dashboard.htm");
			} catch (IOException e) {}
		 			
		}
			 	
		return mv;
		
	}

	@RequestMapping(value = "/logout.htm")
	public void logout(HttpServletRequest request, HttpServletResponse response){
		request.getSession().invalidate();
		
		try {
			response.sendRedirect(request.getRequestURL().toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/NewLogin.htm", method = RequestMethod.GET)
	public ModelAndView NewLogin(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("master/NewLogin");
	
		
		String msg=request.getParameter("tx");
		try {
			msg=msg.replace("XY", "");
			msg=msg.replace("12", "");
			msg=msg.replace("X-", "");
			msg=msg.replace("Y-", "");
			mv.addObject("msg",msg);
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			
		}
		return mv;
		
	}
}