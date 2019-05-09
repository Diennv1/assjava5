package abc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import abc.entity.nhanVienEntity;
import abc.repons.reponsitory;

@Controller
public class logincontroller {
	@Autowired reponsitory repon;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model mm) {
		mm.addAttribute("tk", new nhanVienEntity());
		return "login";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String dangNhap(@ModelAttribute("tk") nhanVienEntity nhanVienEntity,Model mm) {
		nhanVienEntity nv=repon.login(nhanVienEntity.getUser(), nhanVienEntity.getPass());
		if (nv==null) {
			mm.addAttribute("dm", "Đăng nhập thất bại!");
			return "login";
		}
		return "redirect:/danhSach";
	}
}
