package pl.coderslab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.task.Task;
import pl.coderslab.task.TaskDao;

import java.util.List;


@Controller
public class HomePageController {

    private final TaskDao taskDao;

    public HomePageController(TaskDao taskDao){
        this.taskDao = taskDao;
    }

    @GetMapping("/")
    public String homePage(Model model) {

        List<Task> newestTasks = taskDao.listNewest(5);
        model.addAttribute("tasks", newestTasks);

        return "/views/home";
    }

}