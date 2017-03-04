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
public class Inventory {

@Autowired
private BloodBankService bloodBankService;
	
@RequestMapping(value = "/Inventory.htm", method = RequestMethod.GET)
	public ModelAndView Dashboard(HttpServletRequest request,
			HttpServletResponse response) {
		
	ModelAndView mv = new ModelAndView("bloodbank/Inventory");

	return mv;
}

}
