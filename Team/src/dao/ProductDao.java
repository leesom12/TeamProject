package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import common.DBConnection;
import dto.ProductDto;

public class ProductDao {
	Connection con = null;
	PreparedStatement ps= null;
	ResultSet rs= null;
	
	//인덱스 프로덕트 리스트
			public ArrayList<ProductDto> getProductIndex(){
				ArrayList<ProductDto> arr = new ArrayList<>();
				String query = "select * from\r\n" + 
						"(select rownum rnum, tbl.* from\r\n" + 
						"(select p_name, price, attach from team_이소민_product\r\n" + 
						"order by reg_date desc)tbl)\r\n" + 
						"where rnum >=1 and rnum <= 4";
				//System.out.println(query);
				try {
					con = DBConnection.getConnection();
					ps  = con.prepareStatement(query);
					rs  = ps.executeQuery();
					while(rs.next()) {
						String p_name = rs.getString("p_name");
						String price = rs.getNString("price");
						String attach = rs.getString("attach");
						
						ProductDto dto = new ProductDto(p_name, price, attach);
						arr.add(dto);
						
					}
					
				}catch(SQLException e) {
					System.out.println("getProductList(): "+query);
					e.printStackTrace();
				}finally {
					DBConnection.closeDB(con, ps, rs);
				}
				
				return arr;
			}
	
	//게시글 번호 생성
		public String getMaxNo() {
			String no = "";
			String query = "select nvl(max(p_no),'P000') as no\r\n" + 
						"from team_이소민_product";
			try {
				con = DBConnection.getConnection();
				ps  = con.prepareStatement(query);
				rs  = ps.executeQuery();
				if(rs.next()) {
					no = rs.getNString("no");
					no = no.substring(1);
					int n = Integer.parseInt(no);
					n++;
					
					DecimalFormat df = new DecimalFormat("P000");
					no = df.format(n);
					
				}
			}catch(SQLException e){
				System.out.println("getMaxNo():"+query);
				e.printStackTrace();
			}finally {
				DBConnection.closeDB(con, ps, rs);
			}
			return no;
		}
		
		//프로덕트 게시글 저장
		public int getProductSave(ProductDto dto) {
			int result = 0;
			String query = "insert into team_이소민_product\r\n" + 
						"(p_no, p_name, id, reg_date, price, gumsu, attach, content)\r\n" + 
						"values('"+dto.getP_no()+"','"+dto.getP_name()+"','"+dto.getId()+"',"
								+ "to_date('"+dto.getReg_date()+"', 'yyyy-MM-dd hh24:mi:ss'),\r\n" + 
						"'"+dto.getPrice()+"','"+dto.getGumsu()+"','"+dto.getAttach()+"','"+dto.getContent()+"')";
			
			try {
				con = DBConnection.getConnection();
				ps  = con.prepareStatement(query);
				result = ps.executeUpdate();
			}catch(SQLException e) {
				System.out.println("getProductSave(): "+query);
				e.printStackTrace();
			}finally {
				DBConnection.closeDB(con, ps, rs);
			}
			
			return result;
		}	
}
