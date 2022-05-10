package web.mvc_hibernate.dao;

import web.mvc_hibernate.entity.User;

import java.util.List;

public interface UserDao {

    List<User> getAllUsers();

    void saveUser(User user);

    User getUser(int id);

    void deleteUser(int id);

    void updateUser(User user);
}
