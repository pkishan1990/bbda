package controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import entity.Bloodbankmaster;
import entity.Donor;
import service.BloodBankService;

@Controller
public class BloodBank {

@Autowired
private BloodBankService bloodBankService;
	
@RequestMapping(value = "/searchdonorfromhistory.htm", method = RequestMethod.POST)
	public ModelAndView Dashboard(HttpServletRequest request,
			HttpServletResponse response) {
		
	ModelAndView mv = new ModelAndView("bloodbank/searchResult");
	String searchStr = request.getParameter("donorName");
	Map<String,String[]> list_banks = new HashMap<String, String[]>();
	List<Donor> ls1 = bloodBankService.getListofDonors();
	List<Donor> ls = bloodBankService.searchInDonors(searchStr);
	
	try {
		for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
			Donor d = (Donor) iterator.next();
			
			String str[] = new String[4];
			str[0] = d.getFirstname()+" "+ d.getLastname();
			str[1] = d.getAge();
			str[2] = d.getCity();
			str[3] = "24 Jan 2017";
			
			list_banks.put(String.valueOf(d.getRecordid()).trim(),str);
		}
	} catch (NullPointerException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		String str[] = new String[4];
		list_banks.put("",str);
	}
	
	mv.addObject("ListOfdonors",list_banks); 
	
	
	return mv;
}

}
