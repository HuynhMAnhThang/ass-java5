package sof302.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "SELECT r.staff.name,r.staff.depart.name," + "SUM(case when r.type = 1 then 1 else 0 end), " + 
				 "SUM(case when r.type = 0 then 1 else 0 end) " +
				 "FROM Record r " + " GROUP BY  r.staff.name,r.staff.depart.name    "+
				 "order by (SUM(case when r.type = 1 then 1 else 0 end)- SUM(case when r.type = 0 then 1 else 0 end)) desc";
		Query query = session.createQuery(hql);
		List<Object[]> list = query.list();
		model.addAttribute("arrays", list);
		return "home/index";
	}
}
