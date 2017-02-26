package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import service.BatchMasterService;
import service.StudentMasterService;

import entity.Batchmaster;
import entity.Feesmaster;
import entity.Studentmaster;

@Controller
public class BatchMaster {


@Autowired
private StudentMasterService studentMasterService;
@Autowired
private BatchMasterService batchMasterService;

@RequestMapping(value = "/createbatch.htm", method = RequestMethod.GET)
	public ModelAndView Dashboard(HttpServletRequest request,
			HttpServletResponse response) {
		
	ModelAndView mv = new ModelAndView("teacher/CreateBatch");
	Map<String,String[]> list_students = new HashMap<String, String[]>();
	List<Studentmaster> ls = studentMasterService.getListofActiveStudents();
	
	
	try {
		for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
			Studentmaster studentmaster = (Studentmaster) iterator.next();
			
			String str[] = new String[4];
			str[0] = studentmaster.getFullname();
			str[1] = studentmaster.getStandard();
			str[2] = studentmaster.getBoard();
			str[3] = studentmaster.getMedium();
			
			list_students.put(String.valueOf(studentmaster.getStudentid()).trim(),str);
		}
	} catch (NullPointerException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		String str[] = new String[4];
		list_students.put("",str);
	}
	
	
	
	mv.addObject("ListOfStudents",list_students); 
	return mv;
	
	
}


@RequestMapping(value="/newbatch.htm", method= RequestMethod.POST)
public ModelAndView feestransaction(HttpServletRequest request, HttpServletResponse response) throws ParseException{
	
		
	ModelAndView mv = new ModelAndView("teacher/CreateBatch");
	String idStr = request.getParameter("hiddenidstr");
	System.out.println(idStr);
	
	String bname = request.getParameter("batchname");
	String bdesc = request.getParameter("bdesc");
	
	Batchmaster batchmaster = new Batchmaster();
	batchmaster.setBatch(bname);
	batchmaster.setBatchDescription(bdesc);
	batchmaster.setBatchcode((Integer.valueOf(batchMasterService.getLastBatchCode()) +1)+"");
	this.batchMasterService.createBatch(batchmaster);
	Studentmaster studentmaster = null;
	if(idStr.length()>0){
		String[] studentsArr = idStr.split(",");
		for (int i = 0; i < studentsArr.length; i++) {
			studentmaster = studentMasterService.getStudentInfo(studentsArr[i]);
			studentmaster.setBatch(batchmaster.getBatchcode());
			this.studentMasterService.updateRecord(studentmaster);
		}
	}
	
	
	try {
		response.sendRedirect(request.getContextPath() + "/newbatch.htm");
	} catch (IOException e) {}
 	
	
//	String Role = request.getSession().getAttribute("Role").toString();
//	mv.addObject("StudentMaster",studentmaster);
//	mv.addObject("FeesMaster",feesmaster);
//	mv.addObject("InstallmentNo",fls.size()+1);
//	mv.addObject("PayDate",request.getParameter("paydate"));
//	mv.addObject("paidAmount",paidAmount);
//	mv.addObject("NewOutBal",outbalance);
	
	return mv;
}


}
