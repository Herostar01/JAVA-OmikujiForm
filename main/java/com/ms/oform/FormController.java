package com.ms.oform;


import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;


import java.util.*;

import javax.servlet.http.HttpSession;

@Controller
public class FormController {
	
	@RequestMapping("/form")
	public String form() {
		
		return "form.jsp"; 
		
	}
	@PostMapping("/send")
	public String send(
			@RequestParam(value="number") Integer number,
			@RequestParam(value="city") String city,
			@RequestParam(value="personName") String personName,
			@RequestParam(value="job") String job,
			@RequestParam(value="animal") String animal,
			@RequestParam(value="compliment") String compliment,
			HttpSession session) {
		
		
		session.setAttribute("number", number);
		session.setAttribute("city", city); 
		session.setAttribute("personName", personName);
		session.setAttribute("job", job);
		session.setAttribute("animal", animal);
		session.setAttribute("compliment", compliment);
		
		return "redirect:/show";
	}
	
	@RequestMapping("/show")
	public String show(HttpSession session, Model model) {
		
		Integer currentNumber = (Integer) session.getAttribute("number");
		String currentCity = (String) session.getAttribute("city");
		String currentPerson = (String) session.getAttribute("personName");
		String currentJob = (String) session.getAttribute("job");
		String currentAnimal = (String) session.getAttribute("animal");
		String currentCompliment = (String) session.getAttribute("compliment");
		
		model.addAttribute("displayNumber", currentNumber);
		model.addAttribute("displayCity", currentCity);
		model.addAttribute("displayPerson", currentPerson);
		model.addAttribute("displayHobby", currentJob);
		model.addAttribute("displayAnimal", currentAnimal);
		model.addAttribute("displayCompliment", currentCompliment);
		
		return "showForm.jsp";
	}
	

}