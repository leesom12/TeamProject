package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;

import common.DBConnection;
import dto.ProductDto;

public class ProductDao {
	Connection con = null;
	PreparedStatement ps= null;
	ResultSet rs= null;
	
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
