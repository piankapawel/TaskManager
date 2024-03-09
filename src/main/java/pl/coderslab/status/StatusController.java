package pl.coderslab.status;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/status/")
public class StatusController {

    private final StatusDao statusDao;

    public StatusController(StatusDao statusDao){
        this.statusDao = statusDao;
    }

    @GetMapping("/list")
    public String list(Model model){
        List<Status> statuses = statusDao.list();
        model.addAttribute("statuses", statuses);

        return "/views/status/list";
    }

    @GetMapping("/add")
    public String addGet(Model model){
        model.addAttribute("status",new Status());
        return "/views/status/add";
    }

    @PostMapping("/add")
    public String addPost(Status status){
        statusDao.add(status);
        return "redirect:/status/list";
    }

    @GetMapping("/edit/{id}")
    public String editGet(@PathVariable long id, Model model){
        model.addAttribute("status", statusDao.findById(id));
        return "/views/status/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPost(Status status){
        statusDao.update(status);
        return "redirect:/status/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteGet(@PathVariable long id, Model model){
        model.addAttribute("status", statusDao.findById(id));
        return "/views/status/deleteConfirmation";
    }

    @PostMapping("/delete/{id}")
    public String deletePost(@PathVariable long id){
        Status status = statusDao.findById(id);
        statusDao.delete(status);

        return "redirect:/status/list";
    }
}
