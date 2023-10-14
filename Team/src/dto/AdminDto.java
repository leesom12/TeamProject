package dto;

public class AdminDto {
	private String p_no, p_name, price, reg_date, attach, gumsu;

	
	public AdminDto(String p_no, String p_name, String price, String reg_date, String attach, String gumsu) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.price = price;
		this.reg_date = reg_date;
		this.attach = attach;
		this.gumsu = gumsu;
	}


	public String getP_no() {
		return p_no;
	}


	public String getP_name() {
		return p_name;
	}


	public String getPrice() {
		return price;
	}


	public String getReg_date() {
		return reg_date;
	}


	public String getAttach() {
		return attach;
	}


	public String getGumsu() {
		return gumsu;
	}

	
	
}
