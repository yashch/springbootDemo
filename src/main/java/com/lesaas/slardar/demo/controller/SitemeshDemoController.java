package com.lesaas.slardar.demo.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lesaas.slardar.base.util.ToolUtils;

@Controller
@RequestMapping("/sitemeshdemo")
public class SitemeshDemoController {

	@RequestMapping(method=RequestMethod.GET)
	public String index(){
		
		return "sitemeshDemo/demo1";
	}
}
