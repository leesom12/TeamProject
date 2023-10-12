package dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import common.CommonUtil;
import common.DBConnection;
import dto.MemberDto;

public class MemberDao {
	Connection con = null;
	PreparedStatement ps= null;
	ResultSet rs= null;

    
    //회원가입
    public int saveMember(MemberDto dto) {
    	int result=0;
    	String query="insert into team_이소민_member\r\n" + 
    			"(id, name, password, address, tel, reg_date)\r\n" + 
    			"values\r\n" + 
    			"('"+dto.getId()+"', '"+dto.getName()+"', '"+dto.getPassword()+"', '"+dto.getAddress()+"', "
    			+ "'"+dto.getTel()+"', to_date('"+dto.getReg_date()+"', 'yyyy-MM-dd hh24:mi:ss'))";
    	try {
    		con= DBConnection.getConnection();
    		ps= con.prepareStatement(query);
    		result= ps.executeUpdate();
    	}catch(Exception e) {
    		System.out.println("saveMember() 오류: "+query);
    		e.printStackTrace();
    	}finally {
    		DBConnection.closeDB(con, ps, rs);
    	}
    	return result;
    }

    
    //로그인
    public String memberLogin(String id, String pw) {
    	String name = "";
    	String query="select name from team_이소민_member\r\n" + 
    				 "where id='"+id+"' and password='"+pw+"' and exit_date is null";
    	try {
    		con= DBConnection.getConnection();
    		ps= con.prepareStatement(query);
    		rs= ps.executeQuery();
    		if(rs.next()) {
    			name= rs.getString("name");
    		}
    	}catch(Exception e) {
    		System.out.println("memberLogin() 오류: "+query);
    		e.printStackTrace();
    	}finally {
    		DBConnection.closeDB(con, ps, rs);
    	}
    	return name;
    }


    
	//회원 탈퇴
	public int memberDelete(String id) {
		int result=0;
		String date= CommonUtil.getTodayTime();
		String query="";
		try {
			con= DBConnection.getConnection();
			ps= con.prepareStatement(query);
			result= ps.executeUpdate();
		}catch(Exception e) {
			System.out.println("memberDelete() 오류: "+query);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}

	
	//비밀번호 암호화
    public String encryptSHA256(String value) throws NoSuchAlgorithmException{
        String encryptData ="";
         
        MessageDigest sha = MessageDigest.getInstance("SHA-256");
        sha.update(value.getBytes());
 
        byte[] digest = sha.digest();
        for (int i=0; i<digest.length; i++) {
            encryptData += Integer.toHexString(digest[i] &0xFF).toUpperCase();
        }
         
        return encryptData;
    }


	 

    //상점 정보 변경
    public int getSangjumUpdate(MemberDto dto) {
		int result = 0;
		String query = "update team_이소민_member\r\n" + 
				"        SET sangjumname = '"+dto.getSangjumname()+"',\r\n" + 
				"            sangjumsoge = '"+dto.getSangjumsoge()+"'\r\n" + 
				"        where id = '"+dto.getId()+"' ";
		
		try {
			con = DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(query);
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		
		
		return result;
	}


	public MemberDto getSellerView(String id) {
		MemberDto dto = null;
		String query = "select sangjumname,sangjumsoge,\r\n" + 
				"to_char(reg_date,'yyyy\"/\"mm')as reg_date\r\n" + 
				"from team_이소민_member\r\n" + 
				"where id = '"+id+"'";
		
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()) {
				String name = rs.getNString("sangjumname");
				String soge = rs.getString("sangjumsoge");
				String reg_date = rs.getNString("reg_date");
				dto = new MemberDto(id, reg_date, name, soge);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		
		return dto;
	}


	public int getSangpumsu(String id) {
		int count = 0;
		String query="select count(p_no)as count from team_이소민_product\r\n" + 
				"where id = '"+id+"'";
		
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();	
			if(rs.next()) {
				count = rs.getInt("count");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return count;
	}


	
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
