package dto;

public class ProductDto {
	private String p_no, p_name, id, reg_date, price, gumsu, attach, content;

	//등록
	public ProductDto(String p_no, String p_name, String id, String reg_date, String price, String gumsu, String attach,
			String content) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.id = id;
		this.reg_date = reg_date;
		this.price = price;
		this.gumsu = gumsu;
		this.attach = attach;
		this.content = content;
	}
	
	//인덱스 리스트
	public ProductDto(String p_name, String price, String attach) {
		super();
		this.p_name = p_name;
		this.price = price;
		this.attach = attach;
	}
	
	public String getP_no() {
		return p_no;
	}


	public String getP_name() {
		return p_name;
	}

	public String getId() {
		return id;
	}

	public String getReg_date() {
		return reg_date;
	}

	public String getPrice() {
		return price;
	}

	public String getGumsu() {
		return gumsu;
	}

	public String getAttach() {
		return attach;
	}

	public String getContent() {
		return content;
	}
	
	
}
