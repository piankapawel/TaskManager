package pl.coderslab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.article.Article;
import pl.coderslab.article.ArticleDao;

import java.util.List;


@Controller
public class HomePageController {

    private final ArticleDao articleDao;

    public HomePageController(ArticleDao articleDao){
        this.articleDao = articleDao;
    }

    @GetMapping("/")
    public String homePage(Model model) {

        List<Article> newestArticles = articleDao.listNewest(5);
        model.addAttribute("articles", newestArticles);

        return "/views/home";
    }

}