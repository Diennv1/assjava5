package abc.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import abc.entity.phongBanEntity;
import abc.repons.repomsitoryCategory;


@Controller
public class phongBanControlle {
	@Autowired
	repomsitoryCategory reponsitory;
	// II. phòng ban

	@RequestMapping(value="/danhSachPhongBan")
	public String dsPhongBan(Model md) {
		ArrayList<phongBanEntity> all=(ArrayList<phongBanEntity>) reponsitory.findAll();
		md.addAttribute("ALL",all);
		return "dsPhongBan";
	}

	@RequestMapping(value="/themPhongBan", method=RequestMethod.GET)
	public String themPhongBan(Model md) {
		md.addAttribute("data", new phongBanEntity());
		return "phongBan";
		
	}
	// thực hiên 
	@RequestMapping(value="/themPhongBan", method=RequestMethod.POST)
	public String themPhongBan(@ModelAttribute("data") phongBanEntity data, Model md) {
		reponsitory.save(data);
		return "redirect:/danhSachPhongBan";
		
	}

	//sua
	@RequestMapping(value="/suapb/{id}", method=RequestMethod.GET)
	public String sua1(@PathVariable("id") int id, Model md) {
		md.addAttribute("data", reponsitory.findOne(id));
		return "phongBan";
		
	}
	@RequestMapping(value="/suapb/{id}", method=RequestMethod.POST)
	public String sua1(phongBanEntity phongBanEntity, Model md) {
		reponsitory.save(phongBanEntity);
		return "redirect:/danhSachPhongBan";
		
	}
	// phần xóa
	@RequestMapping(value="/xoapb/{id}", method=RequestMethod.GET)
	public String xoa1(@PathVariable("id") int id) {
		reponsitory.delete(id);
		return "redirect:/danhSachPhongBan";
		
	}
}
