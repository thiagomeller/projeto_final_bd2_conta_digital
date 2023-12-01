package com.contadigital.apicontadigital.controller;

import com.contadigital.apicontadigital.controller.dto.UserDto;
import com.contadigital.apicontadigital.dao.PersonRepository;
import com.contadigital.apicontadigital.dao.UserRepository;
import com.contadigital.apicontadigital.model.Person;
import com.contadigital.apicontadigital.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.ValidationException;
import java.time.LocalDateTime;
import java.util.Optional;

@RestController
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PersonRepository personRepository;

    @PostMapping(path = "create-user")
    public ResponseEntity createUser(@RequestBody UserDto userDto) {
        Optional<Person> personOptional = personRepository.findById(userDto.getPersonId());
        if (personOptional.isEmpty()) {
            throw new ValidationException("Person not found");
        }
        User newUser = new User();
        newUser.setPerson(personOptional.get());
        newUser.setUsername(userDto.getUsername());
        newUser.setCreatedAt(LocalDateTime.now());
        userRepository.save(newUser);
        return ResponseEntity.ok().build();
    }
}
