package com.rehnuma.beatles.repository;

import com.rehnuma.beatles.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

//<User,Integer> => <entity class name, primary key>
@Repository
public interface UserRepository extends CrudRepository<User,Integer> {
    public User findByEmailAndPassword(String email, String password);

}
