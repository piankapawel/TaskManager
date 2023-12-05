package pl.coderslab.category;

import org.springframework.stereotype.Repository;
import pl.coderslab.article.Article;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class CategoryDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Category category){
        entityManager.persist(category);
    }

    public Category findById(long id){
        return entityManager.find(Category.class, id);
    }

    public void update(Category category){
        entityManager.merge(category);
    }

    public void delete(Category category){
        entityManager.remove(entityManager.contains(category)? category: entityManager.merge(category));
    }

    public List<Category> list(){
        Query query = entityManager.createQuery("SELECT c FROM Category c");
        return query.getResultList();
    }

}
