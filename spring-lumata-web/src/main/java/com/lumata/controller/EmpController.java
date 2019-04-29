package com.lumata.controller;

/*import java.util.Calendar;*/
import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
//import org.springframework.web.bind.annotation.ModelAttribute;    
//import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
//import org.springframework.web.bind.annotation.RequestMethod;     
import com.lumata.beans.Emp;    
import com.lumata.dao.EmpDao;    
@Controller    
public class EmpController {    
    @Autowired  
    EmpDao dao;//will inject dao from XML file    
        
    /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */    
      
    @RequestMapping("/viewemp")    
    public String viewemp(Model m){    
        List<Emp> list=dao.getEmployees();
       /* Calendar c = Calendar.getInstance();
        c.setFirstDayOfWeek(Calendar.MONDAY);
       
        int today = c.get(Calendar.DAY_OF_WEEK);
        c.add(Calendar.DAY_OF_WEEK, -today+Calendar.MONDAY);
        System.out.println("Date "+c.getTime());*/
        
        
         
        
        System.out.println("size:"+list.size());
        m.addAttribute("list",list);  
        return "viewemp";    
    }    
     
        
}  