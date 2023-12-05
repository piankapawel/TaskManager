package pl.coderslab.category;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/category/")
public class CategoryController {

    private final CategoryDao categoryDao;

    public CategoryController(CategoryDao categoryDao){
        this.categoryDao = categoryDao;
    }

    @GetMapping("/list")
    public String list(Model model){
        List<Category> categories = categoryDao.list();
        model.addAttribute("categories", categories);

        return "/views/category/list";
    }

    @GetMapping("/add")
    public String addGet(Model model){
        model.addAttribute("category",new Category());
        return "/views/category/add";
    }

    @PostMapping("/add")
    public String addPost(Category category){
        categoryDao.add(category);
        return "redirect:/category/list";
    }

    @GetMapping("/edit/{id}")
    public String editGet(@PathVariable long id, Model model){
        model.addAttribute("category", categoryDao.findById(id));
        return "/views/category/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPost(Category category){
        categoryDao.update(category);
        return "redirect:/category/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteGet(@PathVariable long id, Model model){
        model.addAttribute("category", categoryDao.findById(id));
        return "/views/category/deleteConfirmation";
    }

    @PostMapping("/delete/{id}")
    public String deletePost(@PathVariable long id){
        Category category = categoryDao.findById(id);
        categoryDao.delete(category);

        return "redirect:/category/list";
    }
}
