package kr.co.daitdayoung.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.admin.domain.ManageNoticeDomain;
import kr.co.daitdayoung.admin.service.ManageNoticeService;
import kr.co.daitdayoung.admin.vo.ManageNoticeVO;
import kr.co.daitdayoung.admin.vo.ManageUsersVO;

@Controller
public class ManageNoticeController {

	@Autowired
	private ManageNoticeService mns;
	
	@GetMapping("/admin/admin_notice/manageNotice.do")
	public String manageNotice(Model model, HttpSession session) {
		
		List<ManageNoticeDomain> noticeList = mns.searchNotice();
		List<ManageNoticeDomain> cnList = mns.searchCouNotice();
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("cnList", cnList);
		
		return "admin/admin_notice/manageNotice";
	}//manageNotice

	//일반공지사항 상세
	@GetMapping("/admin/admin_notice/detailNotice.do")
	public String detailNotice(Model model, String notCode, HttpServletRequest request, HttpSession session) {
		
		notCode=request.getParameter("notCode");
		
		ManageNoticeDomain detailNot = mns.searchDetailNot(notCode);
		
		model.addAttribute("adminName", detailNot.getAdminName());
		model.addAttribute("notTitle", detailNot.getNotTitle());
		model.addAttribute("notContent", detailNot.getNotContent());
		model.addAttribute("notDate", detailNot.getNotDate());
		
		return "admin/admin_notice/detailNotice";
	}//detailNotice

	//강좌공지사항 상세
	@GetMapping("/admin/admin_notice/detailCouNotice.do")
	public String detailCouNotice(Model model, String cnCode, HttpServletRequest request, HttpSession session) {
		
		cnCode = request.getParameter("cnCode");
		
		ManageNoticeDomain detailCn = mns.searchDetailCn(cnCode);
		
		model.addAttribute("insName", detailCn.getInsName());
		model.addAttribute("cnTitle", detailCn.getCnTitle());
		model.addAttribute("cnDate", detailCn.getCnDate());
		model.addAttribute("cnContent", detailCn.getCnContent());
		model.addAttribute("couName", detailCn.getCouName());
		
		return "admin/admin_notice/detailCouNotice";
	}//detailCouNotice
	
	//공지사항 추가
	@GetMapping("/admin/admin_notice/addNotice.do")
	public String addNoticeFrm(Model model, HttpSession session) {
		
		String adminId = (String)session.getAttribute("adminId");
		
	    Date date = new Date();
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    String currentDate = dateFormat.format(date);
	    
	    String adminName = mns.searchAdminName(adminId);
	    
	    model.addAttribute("currentDate", currentDate);
	    model.addAttribute("adminName", adminName);
		
		return "admin/admin_notice/addNotice";
	}//addNoticeFrm
	
	@ResponseBody
	@GetMapping("/admin/admin_notice/modnot.do")
	public String modifyNoticeProcess(Model model, ManageNoticeVO mnVO, HttpSession session) {
		JSONObject jsonObj = new JSONObject();
		
		int cnt=0;
		
		String adminId = (String)session.getAttribute("adminId");
		mnVO.setAdminId(adminId);
		cnt=mns.modifyNotice(mnVO);
		jsonObj.put("cnt", cnt);
		return jsonObj.toJSONString();
	}//modifyNoticeProcess
	
	@ResponseBody
	@GetMapping("/admin/admin_notice/addnot.do")
	public String addNoticeProcess(Model model, ManageNoticeVO mnVO, HttpSession session) {
		JSONObject jsonObj = new JSONObject();
		
		int cnt=0;
		
		String adminId = (String)session.getAttribute("adminId");
		mnVO.setAdminId(adminId);
		cnt=mns.addNotice(mnVO);
		jsonObj.put("cnt", cnt);
		return jsonObj.toJSONString();
	}//addNoticeProcess
	
}//class
