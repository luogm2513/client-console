package com.daoman.client.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daoman.client.model.CustomerCompanyModel;
import com.daoman.client.model.company.CompanyModel;
import com.daoman.client.service.CustomerCompanyService;
import com.daoman.client.service.company.CompanyService;
import com.daoman.client.utils.ServiceException;
import com.daoman.client.utils.SessionUser;

@Controller
@RequestMapping("/customerCompany")
public class CustomerCompanyController extends BaseController{
	
	@Autowired
	private CustomerCompanyService customerCompanyService;
	@Autowired
	private CompanyService companyService;

	@RequestMapping(method=RequestMethod.POST)
	@ResponseBody
	public CustomerCompanyModel postCompany(HttpServletRequest request, HttpServletResponse response,
			@RequestBody CompanyModel company){
		
		SessionUser user = getSessionUser(request);
		try {
			companyService.doCreate(company);
			CustomerCompanyModel customerCompanyModel = customerCompanyService.doCreate(user, company.getId());
			customerCompanyModel.setCompany(company);
			
			return customerCompanyModel;
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	@ResponseBody
	public List<CustomerCompanyModel> queryModelsByAppKey(HttpServletRequest request, HttpServletResponse response){
		SessionUser user = getSessionUser(request);
		return customerCompanyService.queryModelsByAppKey(user.getAppKey());
	}
}