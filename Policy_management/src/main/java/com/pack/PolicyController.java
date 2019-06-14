package com.pack;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pack.form.Policy;
import com.pack.form.PolicyPayment;
import com.pack.form.Search;
import com.pack.form.User;
import com.pack.form.UserLoginModel;
import com.pack.form.Vendor;
import com.pack.form.VendorLoginModel;
import com.pack.service.PolicyService;
import com.pack.service.SearchService;
import com.pack.service.UserService;
import com.pack.service.VendorService;

@Controller
public class PolicyController {
	private static Logger log=Logger.getLogger(PolicyController.class);
	
	/*
	 *  author:aswath
	 */
	
	private VendorService vendorService;
	
	@Autowired(required=true)
	@Qualifier(value="vendorService")
	public void setVendorService(VendorService vendorService) {
		log.info("inside set vendor service");
		this.vendorService = vendorService;
	}
	
	
	
	@RequestMapping("Register")
	public String register() 
	{
		log.info("Register inside");
		return "Register";	}
	
	
	/*
	 * AUTORR :
	 * OTHER*/
	
	private PolicyService policyService;
	  @Autowired(required=true)
	  @Qualifier(value="policyService")
	public void setPolicyService(PolicyService policyService) {
		  log.info("inside policy service");
		this.policyService = policyService;
	}
	/*
	 *  author:aswath
	 */
	@RequestMapping("index")
	public String index() 
	{
		log.info("inside info");
		return "login";
	}
	
	@RequestMapping("registerroute")
	public String registerroute() 
	{
		log.info("inside register route");
		return "registerRoute";
	}
	
	
	@RequestMapping("/login")
	public String vendorLogin(@RequestParam String vendorId,@RequestParam String vendorPassword,ModelMap modelMap,Map<String,Object> map,HttpServletRequest request,Model model) 
	{
		
		log.info("inside login");
		
		int VendorId;
		int result=0;
		try {
		VendorId=Integer.parseInt(vendorId);
		}
		catch (Exception e) {
			modelMap.addAttribute("String", "Please Enter Your Id");
			return "login";
		}
		if(VendorId>10000000) 
		{
			VendorLoginModel vendorLoginModel=new VendorLoginModel(VendorId,vendorPassword);
			result=vendorService.VendorLogin(vendorLoginModel);
			System.out.println(result+"->result");
			if(result==1) 
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("username", vendorLoginModel.getVendorId());
				map.put("policy",new Policy());
				map.put("policyList", policyService.listPolicy());
				log.info("inside list policy");
				return "adminHomePage";
			}
			else if(result==2) 
			{
				modelMap.addAttribute("String", "Please Check Your Id");
				return "login";
			}
			else 
			{
				modelMap.addAttribute("invalidAttempt","true");
				return "login";
			}
		}
		
		/*
		 * place to add the user working
		 * */
		else 
		{
			model.addAttribute("search",new Search());
			UserLoginModel userLoginModel=new UserLoginModel(VendorId,vendorPassword);
			result=userService.UserLogin(userLoginModel);
			System.out.println(result+"->result");
			if(result==1) 
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("username", userLoginModel.getUserId());
//				map.put("policy",new Policy());
//				map.put("policyList", policyService.listPolicy());
				log.info("inside list policy");
//				return "userHomePage";
				return "redirect:/home";
			}
			else if(result==2) 
			{
				modelMap.addAttribute("String", "Please Check Your Id");
				return "login";
			}
			else 
			{
				modelMap.addAttribute("invalidAttempt","true");
				return "login";
			}
		}
	}
	
	@RequestMapping("/vendor/AddAdmin")
	public String AddAdmin(Map<String,Object> map)
	{
		log.info("inside the administator adding");
		map.put("vendor", new Vendor());
		return "addAdmin";
	}
	
	@RequestMapping("/vendor/addAdminForm")
	public String addAdmin(@ModelAttribute("vendor")@Validated Vendor vendor,BindingResult bindingResult,ModelMap modelMap) 
	{
		
		log.info("inside the vendor/addAdminform");
		if(bindingResult.hasErrors()) 
		{
			return "addAdmin";
		}
		else 
		{
			if(0==vendor.getVendorId()) 
			{
				ModelAndView modelAndView = new ModelAndView();
				Random rand=new Random();
				int num=rand.nextInt(9000000)+10000000;
				vendor.setVendorId(num);
				vendorService.addAdmin(vendor);
				modelMap.addAttribute("userId", num);
				
			}
			else 
			{
				vendorService.addAdmin(vendor);
			}
		}
		return "redirect_after_registering";
	}
	
	
	
	
	@RequestMapping("logout")
	public String Logout(HttpSession httpSession) 
	{
		log.info("inside the logout the session ends here");
		httpSession.removeAttribute("username");
		return "redirectHome";
	}
	
	
	@RequestMapping("addPolicy")
	public String addPolicy(Map<String,Object> map)
	{	
		log.info("inside the policy adding");
		map.put("policy",new Policy());
		return "adminAddPolicy";
	}	
	
	//policy controller ->>another
//	private static Logger log=Logger.getLogger(PolicyController.class);
//	private PolicyService policyService;
//	  @Autowired(required=true)
//	  @Qualifier(value="policyService")
//	public void setPolicyService(PolicyService policyService) {
//		this.policyService = policyService;
//	}
	  
//	
//	@RequestMapping(value="/indexa")
//	   public String listPolicy(Map<String,Object> map)
//	   {
//		   map.put("policy",new Policy());
//		   map.put("policyList", policyService.listPolicy());
//		   log.info("inside list policy");
//		   return "Policy";
//	   }
	@RequestMapping("/edit/{policyId}")
	public String editPolicy(@PathVariable("policyId")Integer cid,Map<String,Object> map)
	{
		
		log.info("edit/policy");
		map.put("policy",policyService.getPolicyById(cid));
		log.info("gettimg details for policy id"+ cid );
		
		map.put("policyList",policyService.listPolicy());
		log.info("Retriving policy information");
		return "adminAddPolicy";
	}
	@RequestMapping(value="/delete/{policyId}")
	public String deletePolicy(@PathVariable("policyId")Integer policyId)
	{
		
		log.info("delete policy");
		log.info("deleting policy"+policyId);
		policyService.removePolicy(policyId);
		
		return "redirect:/addl";
		
	}
	@RequestMapping(value="/addl")
	 public String display(Map<String,Object> map)
	 {
//		hamap.put("policy",new Policy());
		
		
		log.info("inside /Addl ->brings the policy list");
		map.put("policyList", policyService.listPolicy());
		return "adminHomePage";
	 }
	
		
	@RequestMapping(value="/policy/add",method=RequestMethod.POST)
		public String addPolicy(@ModelAttribute("policy") @Validated Policy policy,BindingResult bindingResult,Model model)
		{
		
		
			log.info("inside the policy/add ->which adds the policy");
			if(bindingResult.hasErrors())
			{
				log.info("validation error");
				model.addAttribute("policyList",policyService.listPolicy());
				return "adminAddPolicy";
			}
			else
			{
				if(null==policy.getId())
				{
					Random rand=new Random();
					int num=rand.nextInt(90000)+10000;
					policy.setId(num);
					log.info("inside addpolicy");
					policyService.addPolicy(policy);
					
				}
				else
				{
					log.info("inside updatepolicy");
					policyService.updatePolicy(policy);
				}
				return "redirect:/addl";
			}
		}
	
//	User Login
	
	private UserService userService;
	
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	
	
//	
//	@RequestMapping("/user/login")
//	public String userLogin(@RequestParam String userId,@RequestParam String userPassword,ModelMap modelMap,Map<String,Object> map,HttpServletRequest request,Model model) 
//	{
//		model.addAttribute("search",new Search());
//		int UserId;
//		int result=0;
//		try {
//		UserId=Integer.parseInt(userId);
//		}
//		catch (Exception e) {
//			modelMap.addAttribute("String1", "please enter number in userid");
//			return "login";
//		}
//		UserLoginModel userLoginModel=new UserLoginModel(UserId,userPassword);
//		result=userService.UserLogin(userLoginModel);
//		System.out.println(result+"->result");
//		if(result==1) 
//		{
//			HttpSession httpSession=request.getSession();
//			httpSession.setAttribute("username", userLoginModel.getUserId());
////			map.put("policy",new Policy());
////			map.put("policyList", policyService.listPolicy());
////			HttpSession hs= request.getSession();
////			Integer uid= (Integer)hs.getAttribute("username");
////			map.put("policyList", policyService.listUserPolicy(uid));
//			
//			log.info("inside list policy");
//			return "redirect:/dashboard";
//		}
//		else if(result==2) 
//		{
//			modelMap.addAttribute("String", "please enter number in userid");
//			return "login";
//		}
//		else 
//		{
//			modelMap.addAttribute("invalidAttempt","true");
//			return "login";
//		}
//	}
//	
	
	
	
	
	
	
	@RequestMapping("/user/AddUser")
	public String AddUser(Map<String,Object> map)
	{
		map.put("user", new User());
		return "addUser";
	}
	
	@RequestMapping("/user/addUserForm")
	public String addAdmin(@ModelAttribute("user")@Validated User user,BindingResult bindingResult,ModelMap modelMap) 
	{
		if(bindingResult.hasErrors()) 
		{
			return "addUser";
		}
		else 
		{
			if(0==user.getUserId()) 
			{
				ModelAndView modelAndView = new ModelAndView();
				Random rand=new Random();
				int num=rand.nextInt(900000)+100000;
				user.setUserId(num);
				userService.addUser(user);
				modelMap.addAttribute("userId", num);
				
			}
			else 
			{
				userService.addUser(user);
			}
		}
		return "redirect_after_registering";
	}
	
	@RequestMapping("adminHomePage")
	public String adminHomePage() 
	{
		
		return "adminHomePage";
	}
	
//	User Ends
	
//	Search Begins
	private SearchService searchService;
	
	@Autowired(required=true)
	@Qualifier(value="searchService")
	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String searchPolicy(@ModelAttribute("search")@Validated Search search,Model model,BindingResult bindingResult,Map<String,Object>map)
	{
		
		//System.out.print(search.getPolicyId()+" "+search.getNumOfYears()+" "+search.getCompanyName()+" "+search.getPolicyName()+" "+search.getPolicyType());
		if(bindingResult.hasErrors())
		{
			//log.info("Validation Error");
			//model.addAttribute("customerList",customerService.listCustomer());
			System.out.print("Error");
			return "userHomePage";
		}
		
			
				//map.put("customerSearchList", customerService.getCustomerById(customer.getId()));
			log.info("Before search");
			if(search.getPolicyId()!=null&&search.getPolicyName()!=null&&search.getPolicyType()!=null&&search.getCompanyName()!=null&&search.getNumOfYears()!=null)
			{
		map.put("searchList", searchService.searchListPolicy(search.getPolicyId(), search.getPolicyName(), search.getCompanyName(), search.getPolicyType(), search.getNumOfYears()));
		return "userSearchedPage";
			}
			 if(search.getCompanyName()!="")
			{
				System.out.print("inside company");
				map.put("searchList", searchService.searchCompanyName(search.getCompanyName()));
				return "userSearchedPage";
			}
			 if(search.getNumOfYears()!=null)
			{
				map.put("searchList", searchService.searchNumOfYears(search.getNumOfYears()));
				return "userSearchedPage";
			}
			 if(search.getPolicyId()!=null)
			{
				 System.out.print("id");
				map.put("searchList", searchService.searchPolicyId(search.getPolicyId()));
				return "userSearchedPage";
			}
			 if(search.getPolicyName()!="")
			{
				map.put("searchList", searchService.searchPolicyName(search.getPolicyName()));
				return "userSearchedPage";
			}
			 if(search.getPolicyType()!="")
			{
				map.put("searchList", searchService.searchPolicyType(search.getPolicyType()));
				return "userSearchedPage";
			}
			return "userSearchedPage";
	}
//	Home Page
	@RequestMapping("/home")
	public String homePage(Model model,Map<String,Object>map,HttpServletRequest request)
	{
//		model.addAttribute("search",new Search());				
//		map.put("policyList", policyService.listPolicy());
//		return "userHomePage";
		model.addAttribute("search",new Search());	
		HttpSession hs= request.getSession();
		Integer uid= (Integer)hs.getAttribute("username");
		map.put("policyList", policyService.listUserPolicy(uid));
		System.out.println("controller");
		return "userHomePage";
	}
//	Payment Starts
	
	
	@RequestMapping("/paymentInit/{policyId}")
	public String paymentInit(HttpServletRequest request,Model model,@PathVariable("policyId")Integer policyId) 
	{
		
		log.info("paymentInit/policy id");
		model.addAttribute("search",new Search());
		HttpSession hs= request.getSession();
		
		Integer uid= (Integer)hs.getAttribute("username");
		
		User user=userService.fetchUser(uid);
		model.addAttribute("userDetails",user);
		
		Policy policy=policyService.getPolicyById(policyId);
		model.addAttribute("policy", policy);
		
		hs.setAttribute("policyid", policyId);
		System.out.println(policy.getName());
		
		return "paymentInit"; 
	}
	
	
	
	@RequestMapping("/paymentgate")
	public String paymentgate(Model model,HttpServletRequest request)
	{
		model.addAttribute("search",new Search());
//		HttpSession hs= request.getSession();
//		int policy=(Integer)hs.getAttribute("policyid");
//		System.out.println(policy);
		return "Payment_";
	}
	
	
	@RequestMapping("ProcessPayment")
	public String ProcessPayment(Model model,HttpServletRequest request) 
	{
		model.addAttribute("search",new Search());
		HttpSession hs= request.getSession();
		int policyid=(Integer)hs.getAttribute("policyid");
		int  userid= (Integer)hs.getAttribute("username");
		Policy policy2=policyService.getPolicyById(policyid);
		PolicyPayment policyPayment=new PolicyPayment();
		
		policyPayment.setPid(policy2.getId());
		policyPayment.setUid(userid);
		
		Random rand=new Random();
		int num=rand.nextInt(900)+1000;
		policyPayment.setPayid(num);
		
		policyPayment.setTermToPay(policy2.getYears());
		policyPayment.setTermPaid(1);
		num=rand.nextInt(900)+10000;
		
		num=rand.nextInt(10000)+10000;
		policyPayment.setTransactionId(num);
		
		policyPayment.setReceptnumber(num);
		userService.addPayment(policyPayment);
		
		return "paymentsuccess";
	}
	
	
	
	@RequestMapping("/payment/{policyId}")
	public String paymentPolicy(@PathVariable("policyId")Integer cid,Map<String,Object> map,Model model,HttpServletRequest request)
	{
		model.addAttribute("search",new Search());
		HttpSession hs= request.getSession();
		Integer uid= (Integer)hs.getAttribute("username");
		PolicyPayment pp = userService.fetchPayment(uid,cid);
		if(pp==null)
		{
			PolicyPayment pp1 = new PolicyPayment();
			Random rand=new Random();
			int num=rand.nextInt(9000000)+100000;
			pp1.setPayid(num);
			pp1.setPid(cid);
			pp1.setUid(uid);
			userService.addPayment(pp1);
			return "paymentsuccess";
		}
		else {
			return "payment";
		}
		
	}
	
	
	
	@RequestMapping("/paymentSuccess")
	public String listUserPolicy(Model model,Map<String,Object>map,HttpServletRequest request)
	{
		model.addAttribute("search",new Search());	
		HttpSession hs= request.getSession();
		Integer uid= (Integer)hs.getAttribute("username");
		map.put("policyList", policyService.listUserPolicy(uid));
		System.out.println("controller");
		return "userHomePage";
	}
	
//	User Dashboard
	
	@RequestMapping("/dashboard")
	public String dashboardPage(Model model,Map<String,Object>map,HttpServletRequest request)
	{
//		model.addAttribute("search",new Search());				
//		map.put("policyList", policyService.listPolicy());
//		return "userHomePage";
		model.addAttribute("search",new Search());	
		HttpSession hs= request.getSession();
		Integer uid= (Integer)hs.getAttribute("username");
		map.put("user",userService.fetchUser(uid));
		map.put("policyList", policyService.listUserBoughtPolicy(uid));
		System.out.println("controller");
		return "dashboard";
	}
	
	//Dashboard policy display
	
	@RequestMapping("/policydetail/{policyId}")
	public String policyDetail(@PathVariable("policyId")Integer pid,Map<String,Object> map,Model model,HttpServletRequest request)
	{
		model.addAttribute("search",new Search());
		HttpSession hs= request.getSession();
		Integer uid= (Integer)hs.getAttribute("username");
		System.out.println("policy controller");
		map.put("policyDetail",policyService.getPolicyById(pid));
		map.put("user",userService.fetchUser(uid));
		map.put("policyList", policyService.listUserBoughtPolicy(uid));
		return "modal";
	
		
	}
	
	
}
