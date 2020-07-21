package com.rehnuma.beatles.services;

import com.rehnuma.beatles.model.User;

import java.util.List;

public interface UserService {
    public void saveUser(User user);
    public List<User> readUser();
    public User readUserWithId(int id);
    public void updateUser(int id, User user);
    public void deleteUser(int id);
    public User edit(int id);
    public User login(String email, String password);

}
