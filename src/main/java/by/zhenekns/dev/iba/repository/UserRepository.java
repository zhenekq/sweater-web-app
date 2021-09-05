package by.zhenekns.dev.iba.repository;

import by.zhenekns.dev.iba.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);

}
