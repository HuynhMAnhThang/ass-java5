package sof302.controller;

import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import sof302.entity.Depart;
import sof302.entity.Staff;


@Transactional
@Controller
@RequestMapping("/QuanLy/")
public class QuanLyController {
	@Autowired
	SessionFactory factory;

	@Autowired
	LoginController login;

	@RequestMapping("qlnv")
	public String index(ModelMap model) {
		model.addAttribute("staff", new Staff());
		model.addAttribute("staffs", getStaffs());
		return "QuanLy/qlnv";
	}

	@SuppressWarnings("unchecked")
	public List<Staff> getStaffs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Staff";
		Query query = session.createQuery(hql);
		List<Staff> list = query.list();
		return list;
	}

	@RequestMapping(value = "qlnv", params = "btnInsert")
	public String insert(ModelMap model, @Validated @ModelAttribute("staff") Staff staff, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				session.save(staff);
				t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("staffs", getStaffs());
		return "QuanLy/qlnv";
	}

	@RequestMapping(value = "qlnv", params = "btnUpdate")
	public String update(ModelMap model, @Validated @ModelAttribute("staff") Staff staff, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {			
				session.update(staff);
				t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("staffs", getStaffs());
		return "QuanLy/qlnv";
	}

	@RequestMapping(value = "qlnv", params = "btnDelete")
	public String delete(ModelMap model, 
						 @ModelAttribute("staff") Staff staff, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(staff);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("staff", new Staff());
		model.addAttribute("staffs", getStaffs());
		return "QuanLy/qlnv";
	}

	@RequestMapping("qlnv/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Staff staff = (Staff) session.get(Staff.class, id);

		model.addAttribute("staff", staff);
		model.addAttribute("staffs", getStaffs());
		return "QuanLy/qlnv";
	}

	@ModelAttribute("departs")
	@SuppressWarnings("unchecked")
	public List<Depart> getDeparts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Depart";
		Query query = session.createQuery(hql);
		List<Depart> list = query.list();
		return list;
	}

	@RequestMapping("qlqb")
	public String index1(ModelMap model) {
		model.addAttribute("depart", new Depart());
		model.addAttribute("departs", getDeparts());
		return "QuanLy/qlqb";
	}

	@RequestMapping(value = "qlqb", params = "btnInsert")
	public String insert1(ModelMap model, @ModelAttribute("depart") Depart depart) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(depart);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("departs", getDeparts());
		return "QuanLy/qlqb";
	}

	@RequestMapping(value = "qlqb", params = "btnUpdate")
	public String update1(ModelMap model, @ModelAttribute("depart") Depart depart) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(depart);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("departs", getDeparts());
		return "QuanLy/qlqb";
	}

	@RequestMapping(value = "qlqb", params = "btnDelete")
	public String delete(ModelMap model, Depart depart) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(depart);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("depart", new Depart());
		model.addAttribute("departs", getDeparts());
		return "QuanLy/qlqb";
	}

	@RequestMapping("qlqb/{id}")
	public String edit1(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Depart depart = (Depart) session.get(Depart.class, id);

		model.addAttribute("depart", depart);
		model.addAttribute("departs", getDeparts());
		return "QuanLy/qlqb";
	}
}
