package in.prashant.springsecurity.repositories;

import in.prashant.springsecurity.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
     User findByEmail(String emailId);
}
