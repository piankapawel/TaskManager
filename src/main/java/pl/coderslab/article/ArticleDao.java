package pl.coderslab.article;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ArticleDao {

    @PersistenceContext
    private EntityManager entityManager;


    public void add(Article article){
        entityManager.persist(article);
    }

    public Article findById(long id){
        return entityManager.find(Article.class, id);
    }

    public Article findByIdWithCategories(long id) {
        return entityManager.createQuery(
                        "SELECT DISTINCT a FROM Article a LEFT JOIN FETCH a.categories WHERE a.id = :id", Article.class)
                .setParameter("id", id)
                .getSingleResult();
    }


    public void update(Article article){
        entityManager.merge(article);
    }

    public void delete(Article article){
        entityManager.remove(entityManager.contains(article)? article: entityManager.merge(article));
    }

    public List<Article> list(){
        Query query = entityManager.createQuery("SELECT a FROM Article a");
        return query.getResultList();
    }



    public List<Article> listWithCategories(){
        Query query = entityManager.createQuery("SELECT DISTINCT a FROM Article a LEFT JOIN FETCH a.categories");
        return query.getResultList();
    }


    public List<Article> listNewest(int limit){
        Query query = entityManager.createQuery("SELECT a FROM Article a ORDER BY a.created DESC");
        query.setMaxResults(limit);

        return query.getResultList();
    }

}
