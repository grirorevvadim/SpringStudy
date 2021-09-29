package ru.javastudy.SpringStudy.mvc.orm;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.javastudy.SpringStudy.mvc.bean.User;

import java.util.List;

@Repository
@Transactional
public class ORMService {
    @PersistenceContext
    private EntityManager entityManager;

    public List<User> queryFindAllUsersJPA() {
        System.out.println("ORMService queryfindAllUsersJPA is called");
        String query = "from User order by iduser";
        TypedQuery<User> typedQuery = entityManager.createQuery(query, User.class);
        return typedQuery.getResultList();
    }

    public User queryFindUserById(int id) {
        System.out.println("ORMService queryFindUserById is called");
        return entityManager.find(User.class, id);
    }

    public User queryFindUserByUsername(String username) {
        System.out.println("ORMService queryFindUserByUsername is called");
        Query query = entityManager.createQuery("from User where userName = :username");
        query.setParameter("username", username);
        List<User> list = query.getResultList();
        return list.get(0);
    }

    public boolean updateUser(int id, boolean enabled) {
        System.out.println("ORMService updateUser is called");

        String query = "update user set enabled = ? where iduser = ?";
        Query nativeQuery = entityManager.createNativeQuery(query);
        nativeQuery.setParameter(1, enabled);
        nativeQuery.setParameter(2, id);
        int result = nativeQuery.executeUpdate();
        return result > 0; // result show how many rows was updated.
    }

    public boolean insertUser(String username, String password, boolean enabled) {
        System.out.println("ORMExample insertUser is called");

        String qlString = "insert into user (username,password,enabled) values (?,?,?)";
        Query query = entityManager.createNativeQuery(qlString);
        query.setParameter(1, username);
        query.setParameter(2, password);
        query.setParameter(3, enabled);
        int result = query.executeUpdate();

        return result > 0;
    }

    public boolean deleteUser(int idUser) {
        System.out.println("ORMExample deleteUser is called");

        String qlString = "delete from user where iduser=?";
        Query query = entityManager.createNativeQuery(qlString);
        query.setParameter(1, idUser);
        int result = query.executeUpdate();

        return result > 0;
    }


}
