package pl.coderslab.article;

import pl.coderslab.author.Author;
import pl.coderslab.category.Category;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "articles")
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(length = 200)
    private String title;

    @OneToOne
    private Author author;

    @OneToMany
    private List<Category> categories;

    private String content;

    private LocalDateTime created;

    @PrePersist
    public void prePresist() {
        created = LocalDateTime.now();
    }

    private LocalDateTime updated;

    @PreUpdate
    public void preUpdate() {
        updated = LocalDateTime.now();
    }

}
