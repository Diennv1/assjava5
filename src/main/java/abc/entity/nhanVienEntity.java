package abc.entity;

import javax.management.loading.PrivateClassLoader;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Columns;
@Entity
@Table(name="nhanvien")
public class nhanVienEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="username")
	private String user;
	
	@Column(name="hoVaTen")
	private String hoVaTen;
	
	@Column(name="gioiTinh")
	private Boolean gioiTinh;
	
	@Column(name="luong")
	private double luong;
	
	@Column(name="ngaySinh")
	private String ngaySinh;
	
	@Column(name="capDo")
	private int capDo;
	
	@Column(name="email")
	private String email;
	
	@Column(name="sdt")
	private String sdt;
	
	@Column(name="pass")
	private String pass;
	@Column(name="maPhongBan")
	private int maPhongBan;
	public nhanVienEntity(int id, String user, String hoVaTen, Boolean gioiTinh, double luong, String ngaySinh,
			int capDo, String email, String sdt, String pass, int maPhongBan) {
		super();
		this.id = id;
		this.user = user;
		this.hoVaTen = hoVaTen;
		this.gioiTinh = gioiTinh;
		this.luong = luong;
		this.ngaySinh = ngaySinh;
		this.capDo = capDo;
		this.email = email;
		this.sdt = sdt;
		this.pass = pass;
		this.maPhongBan = maPhongBan;
	}
	public nhanVienEntity() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getHoVaTen() {
		return hoVaTen;
	}
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	public Boolean getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(Boolean gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public double getLuong() {
		return luong;
	}
	public void setLuong(double luong) {
		this.luong = luong;
	}
	public String getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public int getCapDo() {
		return capDo;
	}
	public void setCapDo(int capDo) {
		this.capDo = capDo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getMaPhongBan() {
		return maPhongBan;
	}
	public void setMaPhongBan(int maPhongBan) {
		this.maPhongBan = maPhongBan;
	}
	
	
}
