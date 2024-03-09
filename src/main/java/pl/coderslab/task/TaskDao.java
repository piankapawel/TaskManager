package pl.coderslab.task;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class TaskDao {

    @PersistenceContext
    private EntityManager entityManager;


    public void add(Task task){
        entityManager.persist(task);
    }

    public Task findById(long id){
        return entityManager.find(Task.class, id);
    }

    public Task findByIdWithCategories(long id) {
        return entityManager.createQuery(
                        "SELECT DISTINCT a FROM Task a LEFT JOIN FETCH a.statuses WHERE a.id = :id", Task.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    public void update(Task task){
        entityManager.merge(task);
    }

    public void delete(Task task){
        entityManager.remove(entityManager.contains(task)? task: entityManager.merge(task));
    }

    public List<Task> list(){
        Query query = entityManager.createQuery("SELECT a FROM Task a");
        return query.getResultList();
    }


    public List<Task> listWithCategories(){
        Query query = entityManager.createQuery("SELECT DISTINCT a FROM Task a LEFT JOIN FETCH a.statuses");
        return query.getResultList();
    }

    public List<Task> listNewest(int limit){
        Query query = entityManager.createQuery("SELECT a FROM Task a ORDER BY a.created DESC");
        query.setMaxResults(limit);

        return query.getResultList();
    }

}
