package com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.entity.TouristContact;
import com.entity.TouristMaster;
import com.service.TouristService;

@RestController
public class TouristController {
	private static final Logger log = LoggerFactory.getLogger(TouristService.class);
	
	@Autowired
	private TouristService service;
	
	@GetMapping("/addTourist")
	public ModelAndView display() {
		
		ModelAndView mv = new ModelAndView("AddTourist");
		mv.addObject("lastId", service.findLastId()+1);
		return mv;
	}
	
	@PostMapping("/addingTourist")
	public ModelAndView addTourist(
			
			@RequestParam("id") Integer id,
			@RequestParam("name") String name,
			@RequestParam("address")String address,
			@RequestParam("date")String date,
			@RequestParam("amount")String amount,
			@RequestParam("contact1") String contact1,
			@RequestParam("contact2") String contact2,
			@RequestParam("contact3") String contact3){
		
		log.info("name"+name);
		
		TouristMaster tourist = new TouristMaster();
		tourist.setId(id);
		tourist.setName(name);
		tourist.setDate(date);
		tourist.setAddress(address);
		tourist.setBookingAmount(Float.parseFloat(amount));
		TouristContact contact = new TouristContact();
		contact.setPhoneNumber(contact1);
		tourist.addPhone(contact);
		if(!contact2.equals("0")) {
			TouristContact contact_2 = new TouristContact();
			contact_2.setPhoneNumber(contact2);
			tourist.addPhone(contact_2);
		}
		if(!contact3.equals("0")) {
			TouristContact contact_3 = new TouristContact();
			contact_3.setPhoneNumber(contact3);
			tourist.addPhone(contact_3);
		}
		service.addData(tourist);
		ModelAndView mv1 = new ModelAndView("TouristView");
		mv1.addObject("tourist",tourist);
		
		return mv1;
	}

}
