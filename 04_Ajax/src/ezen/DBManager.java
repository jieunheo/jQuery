package ezen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager
{
	//db����
	private Connection conn   = null;

	//db������ ����
	private String host   = ""; //db�ּ�
	private String userid = ""; //id
	private String userpw = ""; //pw

	//�۾� ó���� Ŭ����
	private Statement  stmt   = null;
	private ResultSet  result = null; //������ cursor
	
	//������ Ȯ��
	private boolean  isMonitering = true;

	public DBManager()
	{
		host   = "jdbc:mysql://localhost:3306/chatdb?useUnicode=ture&characterEncoding=utf-8&serverTimezone=UTC";
		userid = "root";
		userpw = "ezen";
	}

	//setter
	public void setHost(String host) 	 { this.host   = host;   }
	public void setUserid(String userid) { this.userid = userid; }
	public void setUserpw(String userpw) { this.userpw = userpw; }
	
	//DB ����
	//���ϰ�: ����-true, ����-false
	public boolean DBOpen()
	{
		try
		{
			//JDBC ����̹� �ε�
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//db����
			conn = DriverManager.getConnection(host, userid, userpw);
		} catch (ClassNotFoundException e)
		{
			//Class.forName()
			e.printStackTrace();
			return false;
		} catch (SQLException e)
		{
			//DriverManager.getConnection()
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	//DB ���� ���
	public void DBClose()
	{
		try
		{
			//db���� ����(*�ʼ�)
			conn.close();
		} catch (SQLException e)
		{
			//DriverManager.getConnection()
			e.printStackTrace();
		}
	}
	
	//Insert, Update, Delete SQL���� ó��
	public boolean RunSQL(String sql)
	{
		if (isMonitering)
		{
			System.out.println("==========================");
			System.out.println(sql);
			System.out.println("==========================");
		}
		
		try
		{
			//�۾� ó���� Ŭ���� �Ҵ�
			stmt = conn.createStatement();
			
			//sql�� ���� - �����ݷ� ���� ����
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	//select SQL���� ó�� - ����
	public boolean OpenQuery(String sql)
	{
		if (isMonitering)
		{
			System.out.println("==========================");
			System.out.println(sql);
			System.out.println("==========================");
		}
		
		try
		{
			//�۾� ó���� Ŭ���� �Ҵ�
			stmt = conn.createStatement();
			result = stmt.executeQuery(sql);
		} catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	//select SQL���� ó�� - Ŭ����
	public void CloseQuery()
	{
		try
		{
			//�ݱ�(*�ʼ�)
			result.close();
			stmt.close();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//select SQL���� ó�� - Ŀ�� Ȯ��
	public boolean GetNext()
	{
		try
		{
			//���� �� ����Ű��
			return result.next();
		} catch (SQLException e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	//select SQL���� ó�� - �� ��������
	public String GetValue(String culumn)
	{
		try
		{
			//�� ���ڿ��� ��������
			return result.getString(culumn);
		} catch (SQLException e)
		{
			e.printStackTrace();
			return null; //�� ������ null ��ȯ
		}
	}
	
	//select SQL���� ó�� - �� ��������
	public int GetInteger(String culumn)
	{
		try
		{
			//�� ���ڿ��� ��������
			return result.getInt(culumn);
		} catch (SQLException e)
		{
			e.printStackTrace();
			return 0; //�� ������ null ��ȯ
		}
	}
	
	//Last Id
	public String GetLastID() {
		String sql = "select last_insert_id() as bno;";
		String bno = "";
		try
		{
			ResultSet result = stmt.executeQuery(sql);
			result = stmt.executeQuery(sql);
			if (result.next() == true)
			{
				bno = result.getString("bno");
			}
			result.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bno;
	}
	
	public static void main(String args[])
	{
	
	}
}