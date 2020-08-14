package in.prashant.springsecurity.services;

import in.prashant.springsecurity.entities.User;
import in.prashant.springsecurity.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserServicesImpl implements UserDetailsService, UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepository.findByEmail(username);
        if(user.equals(null)){
            throw new UsernameNotFoundException("User is not found with username: "+username);
        }
        return new org.springframework.security.core.userdetails.User(user.getEmail(),user.getPassword(),user.getRoles());
    }

    @Override
    public User saveUser(User user) {
        return userRepository.save(user);
    }
}
