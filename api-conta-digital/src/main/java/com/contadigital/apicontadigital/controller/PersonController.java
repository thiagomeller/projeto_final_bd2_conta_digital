package com.contadigital.apicontadigital.controller;

import com.contadigital.apicontadigital.controller.dto.PersonDto;
import com.contadigital.apicontadigital.dao.PersonRepository;
import com.contadigital.apicontadigital.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/person")
public class PersonController {

    @Autowired
    private PersonRepository personRepository;

    @PostMapping(path = "create-person")
    public ResponseEntity<Person> createUser(@RequestBody PersonDto personDto) {
        Person newPerson = new Person();
        newPerson.setCnpj(personDto.getCnpj());
        newPerson.setInstitutionName(personDto.getInstitutionName());
        Person createdPerson = personRepository.save(newPerson);
        return ResponseEntity.ok(createdPerson);
    }
}
