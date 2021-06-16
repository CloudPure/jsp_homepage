package kr.or.kpc.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnLocator {
	public static Connection getConnect() {
		//DataSource�� �̿��ؼ� Connection ��ü�� �����ϸ� 2���� ������ ����
		//1. ����̺� �ε�� DriverManager ������ �Ѵ�.
		//2. ConnectionPool�� ����Ѵ�.
		DataSource ds = null;
		Connection con = null;
		
		try {
			Context context = new InitialContext();
			//java:comp/env/ �� ����
			//jdbc/kpc �� (���μӼ�) context.xml �����ؾ� ��.
			ds = (DataSource) context.lookup("java:comp/env/jdbc/kpc");
			// ConnectionPool�� ������� Connection ��ü�� ��ȯ
			con = ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
		
	}
}
