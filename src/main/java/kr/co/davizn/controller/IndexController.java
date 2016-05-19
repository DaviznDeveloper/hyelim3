package kr.co.davizn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("index.dvn")
	public String index(){
		//이전
		//return "index.jsp";
		
		//Tiles 적용
		return "home.index"; //return view (UrlBase)
	}
}
