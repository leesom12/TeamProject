package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.DBConnection;
import dto.AdminDto;
import dto.ProductDto;

public class AdminDao {
	Connection con = null;
	PreparedStatement ps= null;
	ResultSet rs= null;
	
	//검수 변경
	public int getGumsu(String p_no) {
		int result = 0;
		String query = "update TEAM_이소민_PRODUCT\r\n" + 
				"set gumsu = 'y'\r\n" + 
				"where p_no = '"+p_no+"'";
		
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(query);
			result = ps.executeUpdate();
		}catch(SQLException e) {
			System.out.println("error: "+query);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		return result;
	}
	//프로덕트 리스트
	public ArrayList<AdminDto> getProductList(){
		ArrayList<AdminDto> arr = new ArrayList<>();
		String query = "select p_no, p_name, price, attach, to_char(reg_date,'yyyy/MM/dd') as reg_date, gumsu\r\n" + 
				"from team_이소민_product\r\n" + 
				"order by p_no desc";
		
		System.out.println(query);
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(query);
			rs  = ps.executeQuery();
			while(rs.next()) {
				String p_no = rs.getString("p_no");
				String p_name = rs.getString("p_name");
				String price = rs.getNString("price");
				String attach = rs.getString("attach");
				String reg_date = rs.getString("reg_date");
				String gumsu = rs.getString("gumsu");
				
				AdminDto dto = new AdminDto(p_no, p_name, price, reg_date, attach, gumsu);
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
}
