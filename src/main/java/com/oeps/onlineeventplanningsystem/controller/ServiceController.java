package com.oeps.onlineeventplanningsystem.controller;

import com.oeps.onlineeventplanningsystem.model.Services;
import com.oeps.onlineeventplanningsystem.repositories.ServicesRepo;
import com.oeps.onlineeventplanningsystem.service.ServicesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;

@Controller
public class ServiceController {



    @Autowired
    private ServicesRepo servicesRepo;

    @GetMapping("/addService")
    public String createService(String serviceName, String serviceCreatedBy, String serviceDescription, String serviceCategory , String pictureUrl , String servicePrice) {

        Services services = new Services();

        services.setServiceCreatedBy(serviceCreatedBy);
        services.setServiceCategory(serviceCategory);
        services.setServiceImage(pictureUrl);
        services.setServiceName(serviceName);
        services.setServicePrice(servicePrice);
        services.setServiceDescription(serviceDescription);

        servicesRepo.save(services);

        System.out.println(services);
        return "index";
    }

//    public void searchServiceByName(String name) {
//        servicesService.searchServiceByName(name);
//    }

//    public HashMap getAllServices() {
//        List<Services> servicesList = servicesRepo.findAll();
//
//        return new HashMap(){
//            {
//                put("services", servicesList);
//                System.out.println("hello");
//                System.out.println(servicesList);
//            }
//        };
//    }

    public ModelAndView getAllServices() {
        ModelAndView modelAndView = new ModelAndView("servicesControlAdmin");
        List<Services> servicesList = servicesRepo.findAll();
        modelAndView.addObject("dataList", servicesList);
        return modelAndView;
    }

//    public void updateService(@RequestBody Services services) {
//        servicesService.updateService(services);
//    }
//
//    public void deleteService(@RequestBody Services services) {
//        servicesService.deleteService(services);
//    }

    public void getAllServices(Model model) {
        List<Services> servicesList = servicesRepo.findAll();
        model.addAttribute("dataList", servicesList);
    }

    public void updateService(Services services) {
        servicesRepo.save(services);
    }

    public void get
}
