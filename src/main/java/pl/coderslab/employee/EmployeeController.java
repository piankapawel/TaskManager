package pl.coderslab.employee;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/employee/")
public class EmployeeController {

    private final EmployeeDao employeeDao;

    public EmployeeController(EmployeeDao employeeDao){
        this.employeeDao = employeeDao;
    }

    @GetMapping("/list")
    public String list(Model model){
        List<Employee> employees = employeeDao.list();
        model.addAttribute("employees", employees);

        return "/views/employee/list";
    }

    @GetMapping("/add")
    public String addGet(Model model){
        model.addAttribute("employee",new Employee());
        return "/views/employee/add";
    }

    @PostMapping("/add")
    public String addPost(Employee employee){
        employeeDao.add(employee);
        return "redirect:/employee/list";
    }

    @GetMapping("/edit/{id}")
    public String editGet(@PathVariable long id, Model model){
        model.addAttribute("employee", employeeDao.findById(id));
        return "/views/employee/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPost(Employee employee){
        employeeDao.update(employee);
        return "redirect:/employee/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteGet(@PathVariable long id, Model model){
        model.addAttribute("employee", employeeDao.findById(id));
        return "/views/employee/deleteConfirmation";
    }

    @PostMapping("/delete/{id}")
    public String deletePost(@PathVariable long id){
        Employee employee = employeeDao.findById(id);
        employeeDao.delete(employee);

        return "redirect:/employee/list";
    }
}
