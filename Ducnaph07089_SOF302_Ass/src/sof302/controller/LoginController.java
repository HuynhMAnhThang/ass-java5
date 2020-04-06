package sof302.controller;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sof302.entity.User;

@Transactional
@Controller
@RequestMapping("/log/")
public class LoginController {
	@Autowired
	SessionFactory factory;
	
	@Autowired
	QuanLyController ql;
	
	@RequestMapping("dangnhap")
	public String login(ModelMap model) {
		model.addAttribute("user", new User());
		return "log/dangnhap";
	}	
	
	@RequestMapping(value = "dangnhap", method = RequestMethod.POST)
	public String login(ModelMap model,
						@RequestParam(value = "username") String username,
						@RequestParam(value = "password") String password,
						HttpSession httpSession,
						@Validated @ModelAttribute("user") User user,
						BindingResult errors) {
		Session session = factory.getCurrentSession();
		try {
			user = (User) session.get(User.class, username);
			if (errors.hasErrors()) {
				return "log/dangnhap";		
			}
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Sai Tên Tài Khoản !");
				return "log/dangnhap";
			} else {
				httpSession.setAttribute("user", user);
				httpSession.setAttribute("username", user.getUsername());
				httpSession.setAttribute("fullname", user.getFullname());
				return ql.index(model);
			}
		} catch (Exception e) {
			model.addAttribute("message", "Sai Mật Khẩu !");
			return "log/dangnhap";
		}		
	}
	
	@RequestMapping("logoff")
	public String logoff(HttpSession httpSession) {
		httpSession.removeAttribute("user");
		return "redirect:/log/dangnhap.htm";
	}
	
	@RequestMapping("doimatkhau")
	public String doiMatKhau() {
		return "log/doimatkhau";
	}
	
//	@RequestMapping(value="doimatkhau", method=RequestMethod.POST)
//	public String doiMatKhau(ModelMap model, 
//			@RequestParam("mkcu") String password, 
//			@RequestParam("mkmoi") String newpass1, 
//			@RequestParam("mkmoi1") String newpass2) {
//		if(!newpass1.equals(newpass2)){
//			model.addAttribute("message", "XÃ¡c nháº­n máº­t kháº©u má»›i khÃ´ng Ä‘Ãºng !");
//		}
//		else{
//			Session session = factory.getCurrentSession();
//			try {
//				User user = (User) session.get(User.class, password);
//				if(!user.getPassword().equals(password)){
//					model.addAttribute("message", "Sai máº­t kháº©u !");
//				}
//				else{
//					model.addAttribute("message", "Máº­t kháº©u Ä‘Ã£ Ä‘Æ°á»£c Ä‘á»�i !");
//					user.setPassword(newpass2);
//				}
//			} 
//			catch (Exception e) {
//				model.addAttribute("message", "Sai máº­t kháº©u !");
//			}
//		}
//		return "log/doimatkhau";
//	}
}
