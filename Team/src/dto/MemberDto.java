package dto;

public class MemberDto {
	private String id, name, password, address, tel, reg_date, exit_date;

	//회원가입
	public MemberDto(String id, String name, String password, String address, String tel, String reg_date) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.address = address;
		this.tel = tel;
		this.reg_date = reg_date;
	}

	public MemberDto(String id, String name, String password, String address, String tel, String reg_date,
			String exit_date) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.address = address;
		this.tel = tel;
		this.reg_date = reg_date;
		this.exit_date = exit_date;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getAddress() {
		return address;
	}

	public String getTel() {
		return tel;
	}

	public String getReg_date() {
		return reg_date;
	}

	public String getExit_date() {
		return exit_date;
	}

	
}
