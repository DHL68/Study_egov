package egovframework.example.board.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.sample.service.SampleDefaultVO;

@Controller
public class BoardController {
	
	// 게시판 조회 페이지
	@RequestMapping(value = "/list.do")
	public String list(ModelMap model) throws Exception {

		return "board/list";
	}
	
	// 게시판 등록 페이지
	@RequestMapping(value = "/mgmt.do")
	public String mgmt(ModelMap model) throws Exception {
		
		return "board/mgmt";
	}
	
	// 상세페이지 페이지
	@RequestMapping(value = "/view.do")
	public String view(ModelMap model) throws Exception {
		
		return "board/view";
	}
	
	// 로그인 페이지
	@RequestMapping(value = "/login.do")
	public String login(@RequestParam("user_id") String user_id, @RequestParam("password") String password, ModelMap model, HttpServletRequest request) throws Exception {
		
		// String aa = request.getParameter("user_id");
		// String bb = request.getParameter("password");
		
		System.out.println("user_id : " + user_id);
		System.out.println("password : " + password);
		 
		return "board/list";
	}
}
