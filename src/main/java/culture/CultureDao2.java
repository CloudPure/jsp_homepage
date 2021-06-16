package culture;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.kpc.util.ConnLocator;

public class CultureDao2 {
	private static CultureDao2 single;
	
	private CultureDao2()  {
		}
		
	public static CultureDao2 getInstance() {
			if(single == null) {
				single = new CultureDao2() ;
			}
			return single;
		}
	public ArrayList<CultureDto2> select(int start, int len){
		ArrayList<CultureDto2> list = new ArrayList<CultureDto2>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			con = ConnLocator.getConnect();
			
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT c_year,c_kind,c_name,c_loc ");
			sql.append("FROM culture ");
			sql.append("ORDER BY c_year ");//구분+이름별정리
			sql.append("LIMIT ?,? ");
			
			pstmt = con.prepareStatement(sql.toString());
			
			int index = 1;
			pstmt.setInt(index++, start);
			pstmt.setInt(index++, len);
				
			rs = pstmt.executeQuery();
			while(rs.next()) {
				index = 1;
				//int num = rs.getInt(index++);
				int year= rs.getInt(index++);
				String kind = rs.getString(index++);
				String name = rs.getString(index++);
				String loc = rs.getString(index);
				
				list.add(new CultureDto2(year,kind,name,loc));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return list;
	}
	private void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(con!=null) con.close(); //Connection 자원을 반납
			if(pstmt!=null) pstmt.close();
			if(rs!=null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

		
}
