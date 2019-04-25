package p1;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import antlr.collections.List;

// @Controller used where Program is Start
@Controller
public class Student_Controller 
{
	@Autowired
	StudentDAO sdao;	// Injects from Sample-servlet.xml file
	
	@RequestMapping("/Add_Student")
	public String AddStudent(Model m)
	{
		m.addAttribute("add",new Student());
		return "Add_Student";
	}
	@RequestMapping(value="/Save_Student", method=RequestMethod.POST)
	public String Save_Student(Student s)
	{
		sdao.Save_Student(s);
		return "redirect:/View_Students";
	}
	
	@RequestMapping("/View_Students")
	public String ViewStudents(Model m)
	{
		List<Student> list= sdao.Get_All_Students();
		m.addAttribute("studentlist",list);
		return "Update_Student";
	}
	
	@RequestMapping(value="/Edit_Student/email")
	public String GetStudent(@PathVariable String email, Model m)
	{
		Student s=sdao.Get_Student_By_Email(email);
		m.addAttribute("command",s);
		return "redirect:/View_Students";
	}
	
	@RequestMapping(value="/UpdateStudent", method=RequestMethod.POST)
	public String UpdateStudent(Student s)
	{
		sdao.Update_Student(s);
		return "redirect:/View_Students";
	}
	
	@RequestMapping(value="/DeleteStudent/email")
	public String DeleteStudent(String email)
	{
		sdao.Delete_Student(email);
		return "redirect:/View_Students";
	}
}
