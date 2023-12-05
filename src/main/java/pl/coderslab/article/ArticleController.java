package pl.coderslab.article;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.author.Author;
import pl.coderslab.author.AuthorDao;
import pl.coderslab.category.Category;
import pl.coderslab.category.CategoryDao;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/article/")
public class ArticleController {

    private final ArticleDao articleDao;
    private final CategoryDao categoryDao;
    private final AuthorDao authorDao;

    public ArticleController(ArticleDao articleDao, CategoryDao categoryDao, AuthorDao authorDao) {
        this.articleDao = articleDao;
        this.categoryDao = categoryDao;
        this.authorDao = authorDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        List<Article> articles = articleDao.listWithCategories();
        model.addAttribute("articles", articles);

        return "/views/article/list";
    }

    @GetMapping("/add")
    public String addGet(Model model) {
        model.addAttribute("article", new Article());
        model.addAttribute("categories", categoryDao.list());
        model.addAttribute("authors", authorDao.list());
        return "/views/article/add";
    }

    @PostMapping("/add")
    public String addPost(Article article) {
        articleDao.add(article);
        return "redirect:/article/list";
    }

    @GetMapping("/edit/{id}")
    public String editGet(@PathVariable long id, Model model) {
        model.addAttribute("article", articleDao.findByIdWithCategories(id));
        model.addAttribute("categories", categoryDao.list());
        model.addAttribute("authors",authorDao.list());
        return "/views/article/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPost(Article article) {
        Article articleOld = articleDao.findById(article.getId());
        LocalDateTime created = articleOld.getCreated();
        article.setCreated(created);

        articleDao.update(article);
        return "redirect:/article/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteGet(@PathVariable long id, Model model) {
        model.addAttribute("article", articleDao.findById(id));
        return "/views/article/deleteConfirmation";
    }

    @PostMapping("/delete/{id}")
    public String deletePost(@PathVariable long id) {
        Article article = articleDao.findById(id);
        articleDao.delete(article);

        return "redirect:/article/list";
    }
}
