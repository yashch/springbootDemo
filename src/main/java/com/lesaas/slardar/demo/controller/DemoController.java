package com.lesaas.slardar.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lesaas.slardar.demo.entity.Account;
import com.lesaas.slardar.demo.pageModel.AccountPageModel;
import com.lesaas.slardar.demo.service.AccountDemoService;

/**
 * 实验demo Controller
 * @author ysc
 *
 */
@Controller
@RequestMapping("/demo")
public class DemoController {

	//@Autowired
	//private DemoService demoService;//redis的操作示例
	@Autowired
	private AccountDemoService accountService;//oracle的操作示例
	
	/**
	 * Get method
	 * @return
	 */
	@RequestMapping(method=RequestMethod.GET)
	public String index(){
		return "account/index";
	}
	
	/**
	 * 添加页面显示
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/add")
	public String add(Model model){
		return "account/add";
	}
	
	/**
	 * 添加提交，并且重定向到列表页面
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addNewAccount(Model model,AccountPageModel pageModel,RedirectAttributes redirect){
		//执行保存
		String id=accountService.save(pageModel);
		//重定向到列表页面
		return "redirect:/demo/list";
	}
	
	
	/**
	 * 列表页面显示
	 * @param model
	 * @return
	 */
	@RequestMapping(value="list")
	public String list(Model model){
		
		List<Account> list=accountService.getList();
		model.addAttribute("list", list);
		
		return "account/list";
	}
	
	/**
	 * Account 访问
	 * @return
	 */
	@RequestMapping(value="/account")
	@ResponseBody
	public String account(){
		//根据项目id获取所有记录
		int count=accountService.findAccountByProId("01");
		if(count==0){
			//根据id获取单个account记录
			/*Account account=accountService.getAccountById("80c3015aea3f41b8a655c71147d43d2e");
			return "Account create at "+account.getCreateTime();*/
		}
		return "Total account:"+count;
		
	}
	
	@RequestMapping(value="/test")
	@ResponseBody
	public String test(){
		accountService.getList(null, "a1");
		return "ok";
	}
	
	@RequestMapping(value="/addList")
	@ResponseBody
	public String addList(){
		accountService.saveList();
		return "ok";
	}
	
}
