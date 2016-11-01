package de.hablijack.bienenmonitor.service;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import de.hablijack.bienenmonitor.domain.BienenmonitorUser;
import de.hablijack.bienenmonitor.form.UserCreateForm;
import de.hablijack.bienenmonitor.repository.UserRepository;

@Service
public class UserService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserService.class);

    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public BienenmonitorUser getUserById(long id) {
        LOGGER.debug("Getting user={}", id);
        return userRepository.findOne(id);
    }

    public Optional<BienenmonitorUser> getUserByEmail(String email) {
        LOGGER.debug("Getting user by email={}", email.replaceFirst("@.*", "@***"));
        return userRepository.findOneByEmail(email);
    }

    public BienenmonitorUser create(UserCreateForm form) {
        BienenmonitorUser user = new BienenmonitorUser();
        user.setEmail(form.getEmail());
        user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));
        user.setRole(form.getRole());
        return userRepository.save(user);
    }

    public BienenmonitorUser update(UserCreateForm form) {
        BienenmonitorUser user = getUserById(form.getId());
        user.setEmail(form.getEmail());
        user.setRole(form.getRole());
        user.setFirstname(form.getFirstname());
        user.setLastname(form.getLastname());
        return userRepository.save(user);
    }

    public List<BienenmonitorUser> getAllUser() {
        return userRepository.findAll();
    }
}
