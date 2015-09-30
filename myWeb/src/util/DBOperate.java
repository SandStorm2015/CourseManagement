package util;

import java.sql.*;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import entity.Major;

public class DBOperate {
	public ArrayList<Major> getALLMajor(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Major> list = new ArrayList<Major>();
		try{
			conn = DBConnect.getConnection();
			String sql = "select * from Major;";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Major major = new Major();
				major.setGrade(rs.getString("grade"));
				major.setMajor(rs.getString("major"));
				major.setPeople(rs.getString("people"));
				major.setCname(rs.getString("cname"));
				major.setEtype(rs.getString("etype"));
				major.setCredit(rs.getString("credit"));
				major.setChour(rs.getString("chour"));
				major.setOtime(rs.getString("otime"));
				major.setCtime(rs.getString("ctime"));
				major.setWeek(rs.getString("week"));
				major.setTeacher(rs.getString("teacher"));
				major.setRemark(rs.getString("remark"));
				list.add(major);
			}
			return list;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
		finally{
			if(rs != null){
				try{
					rs.close();
					rs = null;
				}
				catch(Exception ex){
					ex.printStackTrace();
				}
			}
			if(stmt != null){
				try{
					stmt.close();
					stmt = null;
				}
				catch(Exception ex){
					ex.printStackTrace();
				}
			}
		}
	}
}
