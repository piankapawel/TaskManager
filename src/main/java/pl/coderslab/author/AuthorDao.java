package pl.coderslab.author;

import org.springframework.stereotype.Repository;
import pl.coderslab.article.Article;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class AuthorDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Author author){
        entityManager.persist(author);
    }

    public Author findById(long id){
        return entityManager.find(Author.class, id);
    }

    public void update(Author author){
        entityManager.merge(author);
    }

    public void delete(Author author){
        entityManager.remove(entityManager.contains(author)? author: entityManager.merge(author));
    }

    public List<Author> list(){
        Query query = entityManager.createQuery("SELECT a FROM Author a");
        return query.getResultList();
    }

}
