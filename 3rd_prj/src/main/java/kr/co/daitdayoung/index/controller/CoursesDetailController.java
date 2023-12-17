package kr.co.daitdayoung.index.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.service.CoursesService;

@Controller
public class CoursesDetailController {
	
	@RequestMapping(value = "/courses_detail.do", method = RequestMethod.GET)
	public String coursesDetail(String couCode,Model model) {
		
		return "/courses/courses_detail";
	} //강좌
	
	

}