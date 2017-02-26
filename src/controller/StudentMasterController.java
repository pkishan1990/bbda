package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.BatchMasterService;
import service.FeesMasterService;
import service.ParamastService;
import service.StudentMasterService;
import entity.Batchmaster;
import entity.Feesmaster;
import entity.Paramaster;
import entity.Studentmaster;

@Controller
public class StudentMasterController {
	@Autowired
	private FeesMasterService feesMasterService;
	@Autowired
	private StudentMasterService studentMasterService;
	@Autowired
	private ParamastService paramastService;
	@Autowired
	private BatchMasterService batchMasterService;

@RequestMapping(value = "/StudentMasterForm.htm", method = RequestMethod.GET)
	public ModelAndView Dashboard(HttpServletRequest request,
			HttpServletResponse response) {
		
	ModelAndView mv = new ModelAndView("teacher/StudentsMaster");
	Studentmaster studentmaster = new Studentmaster();
	Map<String,String> list_schools = new HashMap<String, String>();
	List<Paramaster> list = this.paramastService.getFromParamast("SCHOOL");
	for (Iterator iterator = list.iterator(); iterator.hasNext();) {
		Paramaster paramaster = (Paramaster) iterator.next();
		list_schools.put(paramaster.getCode().trim(),paramaster.getLdesc().trim());
	}
	list_schools.put("", " Please Select");
	Map<String, String> sortedSchools = sortByValues(list_schools);
	
	Map<String,String> list_batches = new HashMap<String, String>();
	List<Batchmaster> batchlist = this.batchMasterService.getAllBatches();
	for (Iterator iterator = batchlist.iterator(); iterator.hasNext();) {
		Batchmaster batchmaster = (Batchmaster) iterator.next();
		list_batches.put(batchmaster.getBatchcode().trim(),batchmaster.getBatch().trim()+" - "+batchmaster.getBatchDescription().trim());
	}
	list_schools.put("", " Please Select");
	list_batches.put("", " Please Select");
	
	mv.addObject("ListOfSchool",sortedSchools);
	mv.addObject("ListOfBatches",list_batches);
	mv.addObject("studentmasterCommand", studentmaster);
	return mv;
	}



@RequestMapping(value = "/Studentprofile.htm", method = RequestMethod.GET)
	public ModelAndView profile(HttpServletRequest request,
			HttpServletResponse response) {
	
	 ModelAndView mv = new ModelAndView("teacher/StudentProfileView");
	 Studentmaster studentmaster = new Studentmaster();
	 String studentId= request.getParameter("stdId");
	 studentmaster = studentMasterService.getStudentInfo(studentId);
	 Date dob = studentmaster.getDob();
	 SimpleDateFormat sdf = new SimpleDateFormat("dd MMM yyyy");
	 String strdob = sdf.format(dob);
	 List<Paramaster> list = this.paramastService.getFromParamast("SCHOOL");
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			Paramaster paramaster = (Paramaster) iterator.next();
			if (paramaster.getCode().equalsIgnoreCase(studentmaster.getSchoolname())) {
				studentmaster.setSchoolname(paramaster.getLdesc());
			}
		}
		StringBuilder builder = new StringBuilder();
		if(studentmaster.getEnglish().length() != 0 && studentmaster.getEnglish().equalsIgnoreCase("1") ){
			 builder.append("English ,");
		}if(studentmaster.getGujarati().length() != 0 && studentmaster.getGujarati().equalsIgnoreCase("1")){
			 builder.append("Gujarati ,");
		}if(studentmaster.getScience().length() != 0 && studentmaster.getScience().equalsIgnoreCase("1")){
			 builder.append("Science ,");
		}if(studentmaster.getSocialscience().length() != 0 && studentmaster.getSocialscience().equalsIgnoreCase("1")){
			 builder.append("Social Science ,");
		}if(studentmaster.getMaths().length() != 0 && studentmaster.getMaths().equalsIgnoreCase("1")){
			 builder.append("Maths ,");
		}if(studentmaster.getSanskrit().length() != 0 && studentmaster.getSanskrit().equalsIgnoreCase("1")){
			 builder.append("Sanskrit ,");
		}if(studentmaster.getHindi().length() != 0 && studentmaster.getHindi().equalsIgnoreCase("1")){
			 builder.append("Hindi ,");
		}if(studentmaster.getComputer().length() != 0 && studentmaster.getComputer().equalsIgnoreCase("1")){
			 builder.append("Computer");
		}
		System.out.println(builder.toString());
		
		studentmaster.setGender(studentmaster.getGender().toUpperCase());
	 studentmaster.setBoard(studentmaster.getBoard().toUpperCase());
	 studentmaster.setMedium(studentmaster.getMedium().toUpperCase());
	 mv.addObject("DOB", strdob);
	 mv.addObject("Subjects", builder.toString());
	 mv.addObject("studentmaster", studentmaster);
	return mv;
	}



@RequestMapping(value="/SubmitStudentInfo.htm", method= RequestMethod.POST)
public ModelAndView DeductionMasterDetail(@ModelAttribute("studentmasterCommand") Studentmaster student,HttpServletRequest request, HttpServletResponse response) throws ParseException{
//	String Role = request.getSession().getAttribute("Role").toString();
	
		ModelAndView mv = null;
		mv = new ModelAndView("teacher/StudentProfileView");
		try{
			student.setFullname(student.getFirstname()+" "+student.getFathername()+" "+student.getLastname());
			student.setGender(request.getParameter("gender"));
			student.setMiddlename(student.getFathername());
			student.setEnglish(request.getParameter("english"));
			student.setMaths(request.getParameter("maths"));
			student.setGujarati(request.getParameter("gujarati"));
			student.setSocialscience(request.getParameter("socialscience"));
			student.setSanskrit(request.getParameter("sanskrit"));
			student.setHindi(request.getParameter("hindi"));
			student.setComputer(request.getParameter("computer"));
			this.studentMasterService.registerNewStudent(student);
			int lastTransIdNumber = feesMasterService.getAllInstallments(String.valueOf(student.getStudentid()).trim()).size();
			Feesmaster feesmaster = new Feesmaster();
			feesmaster.setAmount(0);
			feesmaster.setOutstanding(student.getTotalfees());
			feesmaster.setPaymentDate(new Date());
			feesmaster.setStudentname(student.getFirstname()+" "+student.getFathername().charAt(0)+" "+student.getLastname());
			feesmaster.setTotalFees(student.getTotalfees());
			feesmaster.setTransType("DR");
			feesmaster.setStudentid(student.getStudentid()+"");
			feesmaster.setModeDescription("new entry");
			feesmaster.setModeofpayment("NA");
			feesmaster.setUserid(request.getSession().getAttribute("userName").toString().trim());
			feesmaster.setTransId(feesmaster.getTransType()+feesmaster.getStudentid()+"N"+lastTransIdNumber);
			feesMasterService.insertFeesMasterDetails(feesmaster);
		}catch(Exception e){
			System.out.println(e);
			e.printStackTrace();
		}
		try {
			response.sendRedirect(request.getContextPath() + "/Studentprofile.htm?stdId="+student.getStudentid());
		} catch (IOException e) {}
	 		
	return mv;
}



@RequestMapping(value="/UpdateStudentInfo.htm", method= RequestMethod.POST)
public ModelAndView updatestudinfo(@ModelAttribute("studentmasterCommand") Studentmaster student,HttpServletRequest request, HttpServletResponse response) throws ParseException{
//	String Role = request.getSession().getAttribute("Role").toString();
	
		ModelAndView mv = null;
		mv = new ModelAndView("teacher/StudentProfileView");
		try{
			student.setFullname(student.getFirstname()+" "+student.getFathername()+" "+student.getLastname());
			student.setGender(request.getParameter("gender"));
			student.setMiddlename(student.getFathername());
			student.setEnglish(request.getParameter("english"));
			student.setMaths(request.getParameter("maths"));
			student.setGujarati(request.getParameter("gujarati"));
			student.setSocialscience(request.getParameter("socialscience"));
			student.setSanskrit(request.getParameter("sanskrit"));
			student.setHindi(request.getParameter("hindi"));
			student.setComputer(request.getParameter("computer"));
			this.studentMasterService.updateRecord(student);
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		try {
			response.sendRedirect(request.getContextPath() + "/Studentprofile.htm?stdId="+student.getStudentid());
		} catch (IOException e) {
			e.printStackTrace();
		}
	 		
	return mv;
}



@RequestMapping(value = "/EditStudentMasterDetails.htm", method = RequestMethod.GET)
	public ModelAndView EditStudentMasterDetails(HttpServletRequest request,
			HttpServletResponse response) {
		
	ModelAndView mv = new ModelAndView("teacher/EditStudentMaster");
	Studentmaster studentmaster = studentMasterService.getStudentInfo(request.getParameter("stdId"));
	Map<String,String> list_schools = new HashMap<String, String>();
	List<Paramaster> list = this.paramastService.getFromParamast("SCHOOL");
	for (Iterator iterator = list.iterator(); iterator.hasNext();) {
		Paramaster paramaster = (Paramaster) iterator.next();
		list_schools.put(paramaster.getCode().trim(),paramaster.getLdesc().trim());
	}
	list_schools.put("", " Please Select");
	Map<String, String> sortedSchools = sortByValues(list_schools);
	
	mv.addObject("ListOfSchool",sortedSchools); 
	mv.addObject("studentmasterCommand", studentmaster);
	return mv;
	}





public static <K extends Comparable,V extends Comparable> Map<K,V> sortByValues(Map<K,V> map){
    List<Map.Entry<K,V>> entries = new LinkedList<Map.Entry<K,V>>(map.entrySet());
  
    Collections.sort(entries, new Comparator<Map.Entry<K,V>>() {

        @SuppressWarnings("unchecked")
		@Override
        public int compare(Entry<K, V> o1, Entry<K, V> o2) {
            return o1.getValue().compareTo(o2.getValue());
        }
    });
  
    //LinkedHashMap will keep the keys in the order they are inserted
    //which is currently sorted on natural ordering
    Map<K,V> sortedMap = new LinkedHashMap<K,V>();
  
    for(Map.Entry<K,V> entry: entries){
        sortedMap.put(entry.getKey(), entry.getValue());
    }
  
    return sortedMap;
}	
}
