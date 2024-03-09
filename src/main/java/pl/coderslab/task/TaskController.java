package pl.coderslab.task;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.status.StatusDao;
import pl.coderslab.employee.EmployeeDao;

import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/task/")
public class TaskController {

    private final TaskDao taskDao;
    private final StatusDao statusDao;
    private final EmployeeDao employeeDao;

    public TaskController(TaskDao taskDao, StatusDao statusDao, EmployeeDao employeeDao) {
        this.taskDao = taskDao;
        this.statusDao = statusDao;
        this.employeeDao = employeeDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        List<Task> tasks = taskDao.listWithCategories();
        model.addAttribute("tasks", tasks);

        return "/views/task/list";
    }

    @GetMapping("/add")
    public String addGet(Model model) {
        model.addAttribute("task", new Task());
        model.addAttribute("statuses", statusDao.list());
        model.addAttribute("employees", employeeDao.list());
        return "/views/task/add";
    }

    @PostMapping("/add")
    public String addPost(Task task) {
        taskDao.add(task);
        return "redirect:/task/list";
    }

    @GetMapping("/edit/{id}")
    public String editGet(@PathVariable long id, Model model) {
        model.addAttribute("task", taskDao.findByIdWithCategories(id));
        model.addAttribute("statuses", statusDao.list());
        model.addAttribute("employees",employeeDao.list());
        return "/views/task/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPost(Task task) {
        Task taskOld = taskDao.findById(task.getId());
        LocalDateTime created = taskOld.getCreated();
        task.setCreated(created);

        taskDao.update(task);
        return "redirect:/task/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteGet(@PathVariable long id, Model model) {
        model.addAttribute("task", taskDao.findById(id));
        return "/views/task/deleteConfirmation";
    }

    @PostMapping("/delete/{id}")
    public String deletePost(@PathVariable long id) {
        Task task = taskDao.findById(id);
        taskDao.delete(task);

        return "redirect:/task/list";
    }
}
