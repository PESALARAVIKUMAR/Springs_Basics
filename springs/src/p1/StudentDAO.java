package p1;
import java.sql.*;
import java.util.*;

import org.springframework.jdbc.core.*;
public class StudentDAO 
{
	static JdbcTemplate jdbct;
	
	@SuppressWarnings("static-access")
	public void Set_JDBC_Template(JdbcTemplate jdbct)
	{
		this.jdbct=jdbct;
	}
	
	public static int Save_Student(Student s)
	{
		String query="insert into student values("+s.getName()+","+s.getEmail()+","+s.getContact()+")";
		return jdbct.update(query);
	}
	
	public static int Update_Student(Student s)
	{
		String query="update student set name="+s.getName()+",contact="+s.getContact();
		return jdbct.update(query);
	}
	
	public static int Delete_Student(String email)
	{
		String query="delete from student where email="+email;
		return jdbct.update(query);
	}
	
	public static Student Get_Student_By_Email(String email)
	{
		String query="select * from student where email="+email;
		return jdbct.queryForObject(query, new Object[] {email}, new BeanPropertyRowMapper<>(Student.class));
	}
	
	public static List<Student> Get_All_Students()
	{
		// JdbcTemplate.query returns List Object
		return jdbct.query("select * from student",new RowMapper<Student>()
				{
					public Student mapRow(ResultSet rs, int rows) throws SQLException
					{
						Student s=new Student();
						s.setName(rs.getString("name"));
						s.setEmail(rs.getString("email"));
						s.setContact(rs.getString("contact"));
						return s;
					}
				});
	}
}
