package pl.coderslab.author;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.category.Category;
import pl.coderslab.category.CategoryDao;

import java.util.List;

@Controller
@RequestMapping("/author/")
public class AuthorController {

    private final AuthorDao authorDao;

    public AuthorController(AuthorDao authorDao){
        this.authorDao = authorDao;
    }

    @GetMapping("/list")
    public String list(Model model){
        List<Author> authors = authorDao.list();
        model.addAttribute("authors", authors);

        return "/views/author/list";
    }

    @GetMapping("/add")
    public String addGet(Model model){
        model.addAttribute("author",new Author());
        return "/views/author/add";
    }

    @PostMapping("/add")
    public String addPost(Author author){
        authorDao.add(author);
        return "redirect:/author/list";
    }

    @GetMapping("/edit/{id}")
    public String editGet(@PathVariable long id, Model model){
        model.addAttribute("author", authorDao.findById(id));
        return "/views/author/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPost(Author author){
        authorDao.update(author);
        return "redirect:/author/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteGet(@PathVariable long id, Model model){
        model.addAttribute("author", authorDao.findById(id));
        return "/views/author/deleteConfirmation";
    }

    @PostMapping("/delete/{id}")
    public String deletePost(@PathVariable long id){
        Author author = authorDao.findById(id);
        authorDao.delete(author);

        return "redirect:/author/list";
    }
}
