package abc.controller;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import abc.entity.nhanVienEntity;
import abc.entity.phongBanEntity;
import abc.repons.repomsitoryCategory;
import abc.repons.reponsitory;

@Controller
public class nhanVienController {
@Autowired
reponsitory reponsitory;
@Autowired
repomsitoryCategory cte;
//I. Nhân viên
@RequestMapping(value="/danhSach")
public String danhSach(Model md) {
	ArrayList<nhanVienEntity> all=(ArrayList<nhanVienEntity>) reponsitory.findAll();
	md.addAttribute("ALL",all);
	return "dsNhanVien";
}

@RequestMapping(value="/them", method=RequestMethod.GET)
public String them(Model md) {
	md.addAttribute("data", new nhanVienEntity());
	ArrayList<phongBanEntity> all=(ArrayList<phongBanEntity>) cte.findAll();
	md.addAttribute("ALLL",all);
	return "them_nhan_vien";
	
}
// thực hiên 
@RequestMapping(value="/them", method=RequestMethod.POST)
public String them(@ModelAttribute("data") nhanVienEntity data, Model md) {
	reponsitory.save(data);
	return "redirect:/danhSach";
	
}

//sua
@RequestMapping(value="/sua/{id}", method=RequestMethod.GET)
public String sua(@PathVariable("id") int id, Model md) {
	md.addAttribute("data", reponsitory.findOne(id));
	return "them_nhan_vien";
	
}
@RequestMapping(value="/sua/{id}", method=RequestMethod.POST)
public String sua(nhanVienEntity nhanvienentity, Model md) {
	reponsitory.save(nhanvienentity);
	return "redirect:/danhSach";
	
}
// phần xóa
@RequestMapping(value="/xoa/{id}", method=RequestMethod.GET)
public String xoa(@PathVariable("id") int id) {
	reponsitory.delete(id);
	return "redirect:/danhSach";
	
}




///
@RequestMapping(value="/menu")
public String menu() {
	
	return "menu";
}

@RequestMapping(value="/category")
public String category() {
	
	return "category";
}


}
