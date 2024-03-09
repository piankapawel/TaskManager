package pl.coderslab.status;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class StatusDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Status status){
        entityManager.persist(status);
    }

    public Status findById(long id){
        return entityManager.find(Status.class, id);
    }

    public void update(Status status){
        entityManager.merge(status);
    }

    public void delete(Status status){
        entityManager.remove(entityManager.contains(status)? status: entityManager.merge(status));
    }

    public List list(){
        Query query = entityManager.createQuery("SELECT c FROM Status c");
        return query.getResultList();
    }

}
