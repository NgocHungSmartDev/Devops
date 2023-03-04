package com.ngochung.devopsspringboot.controller;

import com.ngochung.devopsspringboot.model.Contact;
import com.ngochung.devopsspringboot.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
public class ContactController {
    @Autowired
    private ContactService contactService;

    @GetMapping("/contact")
    public ResponseEntity<List<Contact>> listAllContact(){
        List<Contact> listContact= contactService.findAll();
        return new ResponseEntity<List<Contact>>(listContact, HttpStatus.OK);
    }

    @PostMapping("/contact")
    public Contact saveContact(@RequestBody Contact contact) {
        contact.setDob(new Date());
        return contactService.save(contact);
    }

    @DeleteMapping("/contact/{id}")
    public ResponseEntity<Contact> deleteContact(@PathVariable(value = "id") Long id) {
        Contact contact = contactService.getOne(id);
        if(contact == null) {
            return ResponseEntity.notFound().build();
        }
        contactService.delete(contact);
        return ResponseEntity.ok().build();
    }
}
