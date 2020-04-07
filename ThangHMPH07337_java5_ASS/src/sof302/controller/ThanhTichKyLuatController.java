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

import jdk.nashorn.internal.runtime.regexp.joni.exception.JOniException;
import sof302.entity.Record;
import sof302.entity.Staff;

@Transactional
@Controller
@RequestMapping("Thanhtichkyluat")
public class ThanhTichKyLuatController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("thanhtich-kyluat")
	public String index(ModelMap model) {
		model.addAttribute("record", new Record());
		model.addAttribute("records", getRecords());
		return "Thanhtichkyluat/thanhtich-kyluat";
	}

	@SuppressWarnings("unchecked")
	public List<Record> getRecords() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Record";
		Query query = session.createQuery(hql);
		List<Record> list = query.list();
		return list;
	}

	@RequestMapping(value = "thanhtich-kyluat", params = "btnInsert")
	public String insert(ModelMap model,@Validated @ModelAttribute("record") Record record,BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(record);
			t.commit();
			model.addAttribute("message", "Thêm Mới Thành Công !");
		} catch (Exception e) {
		
			t.rollback();
			model.addAttribute("message", "Thêm Mới Thất Bại !");
		} finally {
			session.close();
		}
		model.addAttribute("records", getRecords());
		return "Thanhtichkyluat/thanhtich-kyluat";
	}

	@RequestMapping(value = "thanhtich-kyluat", params = "btnUpdate")
	public String update(ModelMap model, @Validated @ModelAttribute("record") Record record, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(record);
			t.commit();
			model.addAttribute("message", "Cập Nhật Thành Công !");
		} catch (Exception e) {
			
			t.rollback();
			model.addAttribute("message", "Cập Nhật Thất Bại !");
		} finally {
			session.close();
		}
		model.addAttribute("records", getRecords());
		return "Thanhtichkyluat/thanhtich-kyluat";
	}

	@RequestMapping(value = "thanhtich-kyluat", params = "btnDelete")
	public String delete(ModelMap model, Record record) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(record);
			t.commit();
			model.addAttribute("message", "Xóa Thành Công!");
		} catch (Exception e) {
			System.out.println(e);
			t.rollback();
			model.addAttribute("message", "Xóa Thất Bại !");
		} finally {
			session.close();
		}
		model.addAttribute("record", new Record());
		model.addAttribute("records", getRecords());
		return "Thanhtichkyluat/thanhtich-kyluat";
	}

	@RequestMapping("thanhtich-kyluat/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Record record = (Record) session.get(Record.class, id);

		model.addAttribute("record", record);
		model.addAttribute("records", getRecords());
		return "Thanhtichkyluat/thanhtich-kyluat";
	}

	@ModelAttribute("staffs")
	@SuppressWarnings("unchecked")
	public List<Staff> getStaffs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Staff";
		Query query = session.createQuery(hql);
		List<Staff> list = query.list();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("tonghop")
	public String tonghop(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "SELECT  r.staff.id, r.staff.name,r.staff.lever," + "SUM(case when r.type = 1 then 1 else 0 end), " + 
											 "SUM(case when r.type = 0 then 1 else 0 end) " +
											 "FROM Record r" + " GROUP BY r.staff.id, r.staff.name,r.staff.lever "+
											 "order by (SUM(case when r.type = 1 then 1 else 0 end)- SUM(case when r.type = 0 then 1 else 0 end)) desc";
		Query query = session.createQuery(hql);
		List<Object[]> list = query.list();
		model.addAttribute("arrays", list);
		return "Thanhtichkyluat/tonghop";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("tonghop2")
	public String tonghop2(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql2 = "SELECT  r.staff.depart.name," + "SUM(case when r.type = 1 then 1 else 0 end), " + 
											 "SUM(case when r.type = 0 then 1 else 0 end) " +
											 "FROM Record r" + " GROUP BY r.staff.depart.name "+
											 "order by (SUM(case when r.type = 0 then 1 else 0 end)-SUM(case when r.type = 1 then 1 else 0 end)) asc";
		Query query = session.createQuery(hql2);
		List<Object[]> list2 = query.list();
		model.addAttribute("arraysPB", list2);
		return "Thanhtichkyluat/tonghop2";
	}
}
