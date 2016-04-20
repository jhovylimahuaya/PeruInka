package pe.com.peruInka.service.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import pe.com.peruInka.service.util.Person;

@Service("peruInkaService")
public class PeruInkaService {

	public static List<Person> list = new ArrayList<Person>();
	
	public String savePerson(Person person){
		String validate = "ok";
		String message="ID YA EXISTE";
		for (Person objet : list) {
			if(objet.getId().compareTo(person.getId())==0){
				validate = "ERROR";
				continue;
			}
		}
		if(validate.equals("ok")){
			list.add(person);
			message="ok";
		}
		return message;
	}
	
	public List<Person> findAllPerson(){
		return list;
	}
	
	public void updatePerson(Person personUpdate){
		List<Person> listTemp = new ArrayList<Person>();
		
		for (Person person : list) {
			if(personUpdate.getId().compareTo(person.getId())==0){
				listTemp.add(personUpdate);
			}else{
				listTemp.add(person);
			}
		}
		list = new ArrayList<Person>();
		list.addAll(listTemp);

	}
	
	public Person searchPerson(Long id){
		Person personReturn = new Person();
		for (Person person : list) {
			if(id.compareTo(person.getId())==0){
				personReturn = person;
				continue;
			}
		}
		return personReturn;
	}
	
	public void deletePerson(Long id){
		List<Person> listTemp = new ArrayList<Person>();
		
		for (Person person : list) {
			if(id.compareTo(person.getId())!=0){
				listTemp.add(person);
			}
		}
		list = new ArrayList<Person>();
		list.addAll(listTemp);
	}

	
	
	
	
	
	
	
	
	
	
	
}
