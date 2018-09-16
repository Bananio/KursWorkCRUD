package com.banancheg.service;

import com.banancheg.model.Person;

import java.util.List;

public interface PersonService {

    public void addPerson(Person person);

    public List<Person> getAllPersons();

    public void deletePerson(Integer personId);

    public Person getPerson(int personid);

    public Person updatePerson(Person person);
}
