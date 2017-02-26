package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.FeesMasterService;
import service.StudentMasterService;
import entity.Feesmaster;
import entity.Studentmaster;

@Controller
public class FeesMaster {

@Autowired
private StudentMasterService studentMasterService;
	
@Autowired
private FeesMasterService feesMasterService;

@RequestMapping(value = "/feesmasterform.htm", method = RequestMethod.GET)
	public ModelAndView Dashboard(HttpServletRequest request,
			HttpServletResponse response) {
		
	ModelAndView mv = new ModelAndView("teacher/feesMaster");
	Map<String,String> list_students = new HashMap<String, String>();
	List<Studentmaster> ls = studentMasterService.getListofActiveStudents();
	
	
	try {
		for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
			Studentmaster studentmaster = (Studentmaster) iterator.next();
			
			list_students.put(String.valueOf(studentmaster.getStudentid()).trim(),studentmaster.getFirstname().trim()+" "+ studentmaster.getLastname().trim());
		}
	} catch (NullPointerException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		list_students.put("","No Students found");
	}
	
	
	
	mv.addObject("ListOfStudents",list_students); 
//	mv.addObject("studentmasterCommand", studentmaster);
	return mv;
	}


@RequestMapping(value="/populateStudentDetails.htm", method= RequestMethod.POST)
public  ModelAndView populatefeesofStudentDetail(HttpServletRequest request, HttpServletResponse response){
	ModelAndView mv = new ModelAndView("teacher/PopulateStudentDetail");
	
	String StudentId = request.getParameter("data");
	
	
	Studentmaster studentmaster = new Studentmaster();
	studentmaster = studentMasterService.getStudentInfo(StudentId);
	Feesmaster feesmaster = new Feesmaster();
	Object paidAmount =this.feesMasterService.getPaidAmount(StudentId);
	try {
		System.out.println(paidAmount.toString());
		feesmaster.setOutstanding(studentmaster.getTotalfees()- Integer.parseInt(paidAmount.toString()));
		System.out.println(feesmaster.getOutstanding());
		System.out.println(studentmaster.getFirstname());
	} catch (NullPointerException e) {
		// TODO Auto-generated catch block
		mv.addObject("studentdetails",new Studentmaster());
		mv.addObject("Outstanding",null);
		mv.addObject("paidAmount",null);
		e.printStackTrace();
		return mv;
	}
	
	mv.addObject("studentdetails",studentmaster);
	mv.addObject("Outstanding",feesmaster.getOutstanding());
	mv.addObject("paidAmount",paidAmount);
	return mv;
	
}


@RequestMapping(value="/populateAllInstallments.htm", method= RequestMethod.POST)
public  ModelAndView populateAllInstallments(HttpServletRequest request, HttpServletResponse response){
	ModelAndView mv = new ModelAndView("teacher/PopulateSummaryDetail");
	
	String studentId = request.getParameter("data");
	
	Studentmaster studentmaster = new Studentmaster();
	 try {
            Thread.sleep(800);
        }
        catch (InterruptedException ie) {
            // Handle the exception
        	System.out.println("delay in reading installments...");
        	ie.printStackTrace();
        }
	studentmaster = studentMasterService.getStudentInfo(studentId);
	Feesmaster feesmaster = new Feesmaster();
	Object paidAmount =this.feesMasterService.getPaidAmount(studentmaster.getStudentid()+"");
	int cnt=0;
	SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMM YY");
	Map<String,String[]> installmentMap = new WeakHashMap<String,String[]>();
	List<Feesmaster> installments = feesMasterService.getAllInstallments(studentId);
	System.out.println("number installments"+installments.size());
	for (Iterator iterator = installments.iterator(); iterator.hasNext();) {
		Feesmaster feesmaster2 = (Feesmaster) iterator.next();
		
		String[] strarr = new String[3];
		strarr[0] = dateFormat.format(feesmaster2.getPaymentDate());
		strarr[1] = feesmaster2.getAmount().toString();
		installmentMap.put(cnt+"",strarr);
		System.out.println(strarr[1].toString());
	cnt++;	
	}
	try {
		System.out.println(paidAmount.toString());
		feesmaster.setOutstanding(studentmaster.getTotalfees() - Integer.parseInt(paidAmount.toString()));
		System.out.println(feesmaster.getOutstanding());
		System.out.println(studentmaster.getFirstname());
	} catch (NullPointerException e) {
		// TODO Auto-generated catch block
		mv.addObject("studentdetails",new Studentmaster());
		mv.addObject("Outstanding",null);
		mv.addObject("paidAmount",null);
		e.printStackTrace();
		return mv;
	}
	String totalFees = studentmaster.getTotalfees().toString();;
	System.out.println("paid amnt: "+paidAmount +" outstanding:  "+feesmaster.getOutstanding());
	
	mv.addObject("studentdetails",studentmaster);
	mv.addObject("Installments", installmentMap);
	mv.addObject("Outstanding",feesmaster.getOutstanding());
	mv.addObject("paidAmount",paidAmount.toString());
	mv.addObject("totalfees",totalFees);
	mv.addObject("Today",new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
	return mv;
	
}

//
@RequestMapping(value="/feestransaction.htm", method= RequestMethod.POST)
public ModelAndView feestransaction(HttpServletRequest request, HttpServletResponse response) throws ParseException{
//	String Role = request.getSession().getAttribute("Role").toString();
	Feesmaster feesmaster = new Feesmaster();
	List<Feesmaster> fls = null;
	Studentmaster studentmaster = new Studentmaster();
	Object paidAmount = null;
	Integer outbalance = 0;
	ModelAndView mv = null;
	String standard="";
		mv = new ModelAndView("teacher/FeesRecieptView");
		try{
			outbalance = Integer.parseInt(request.getParameter("outBal"));
			
			int lastTransIdNumber = feesMasterService.getAllInstallments(request.getParameter("name").trim()).size()+1;
			paidAmount =this.feesMasterService.getPaidAmount(request.getParameter("name"));
			feesmaster.setAmount(Integer.parseInt(request.getParameter("amount")));
			feesmaster.setModeDescription(request.getParameter("description"));
			feesmaster.setModeofpayment(request.getParameter("modeofpayment"));
			outbalance = outbalance - feesmaster.getAmount();
			feesmaster.setOutstanding(outbalance);
			feesmaster.setPaymentDate(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("paydate")));
			feesmaster.setStudentid(request.getParameter("name"));
			feesmaster.setStudentname(request.getParameter("fullname"));
			feesmaster.setTotalFees(Integer.parseInt(request.getParameter("totalfee")));
			feesmaster.setTransType("CR");
			feesmaster.setTransId(feesmaster.getTransType()+feesmaster.getStudentid()+"N"+lastTransIdNumber);
			this.feesMasterService.insertFeesMasterDetails(feesmaster);
			
			 fls = feesMasterService.getAllInstallments(feesmaster.getStudentid());
			studentmaster = this.studentMasterService.getStudentInfo(feesmaster.getStudentid());
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
		}
//		try {
//			response.sendRedirect(request.getContextPath() + "/feesmasterform.htm");
//		} catch (IOException e) {}
//	 	
		
	mv.addObject("StudentMaster",studentmaster);
	mv.addObject("FeesMaster",feesmaster);
	mv.addObject("InstallmentNo",fls.size()+1);
	mv.addObject("PayDate",request.getParameter("paydate"));
	mv.addObject("paidAmount",paidAmount);
	mv.addObject("NewOutBal",outbalance);
	
	return mv;
}




}
