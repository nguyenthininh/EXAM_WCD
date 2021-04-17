package com.demo.ninh.dao;

import com.demo.entity.PhoneEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class PhoneDao {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");
    EntityManager em = emf.createEntityManager();

    public int inserPhone(PhoneEntity phone){
        try{
            em = emf.createEntityManager();
            em.getTransaction().begin();
            em.persist(phone);
            em.getTransaction().commit();
            em.close();
            return 1;
        } catch (Exception e){
            return 0;
        }
    }
    public List<PhoneEntity> getAll(){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        List<PhoneEntity> list = em.createQuery("select p from PhoneEntity u ", PhoneEntity.class).getResultList();
        em.getTransaction().commit();
        em.close();
        return list;
    }

}
