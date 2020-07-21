package com.rehnuma.beatles.services;

import com.rehnuma.beatles.model.User;
import com.rehnuma.beatles.repository.UserRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserServiceImp implements UserService {
    private final UserRepository userRepository;

    public UserServiceImp(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public void saveUser(User user) {
        userRepository.save(user);
    }

    @Override
    public List<User> readUser() {
        Iterable<User> users = userRepository.findAll();
        List<User> result= new ArrayList<User>();
        users.forEach(e->result.add(e));
        return result;
    }

    @Override
    public User readUserWithId(int id) {
        Optional<User> byId = userRepository.findById(id);
        if(!byId.isPresent()){
            return null;
        }

        return byId.get();
    }

    @Override
    public void updateUser(int id, User user) {
        //find()+ save()=update()
        Optional<User> userResult=userRepository.findById(id);
        //copying user1 information into "user" object
        User user1=userResult.get();
        user1.setName(user.getName());
        user1.setEmail(user.getEmail());
        user1.setPassword(user.getPassword());

        userRepository.save(user1);




    }

    @Override
    public void deleteUser(int id) {
        userRepository.deleteById(id);
    }
    public User edit(int id){
        return userRepository.findById(id).get();
    }
    public User login(String email, String password){
        User user= userRepository.findByEmailAndPassword(email,password);
        System.out.println("user in login:"+user);
        return user;
    }


}
