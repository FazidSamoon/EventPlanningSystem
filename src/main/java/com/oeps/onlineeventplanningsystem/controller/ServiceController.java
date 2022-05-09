package com.oeps.onlineeventplanningsystem.controller;

import com.oeps.onlineeventplanningsystem.model.Services;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.repositories.ServicesRepo;
import com.oeps.onlineeventplanningsystem.service.ServicesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

@Controller
public class ServiceController {



    @Autowired
    private ServicesRepo servicesRepo;

    @PostMapping("/addService")
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

    @GetMapping("/servicesControlAdmin")
    public ModelAndView getAllServices() {

        List<Services> servicesList = servicesRepo.findAll();
        return new ModelAndView("servicesControlAdmin", new HashMap() {
            {
                put("dataList", servicesList);
            }
        }, HttpStatus.OK);

    }

    @GetMapping("/editService/{id}")
    public ModelAndView loadUpdateForm(@PathVariable("id") Long id) {
        
        Services service = servicesRepo.findById(id).get();

        return new ModelAndView("/editService", new HashMap() {
            {
                put("currentService", service);
            }
        }, HttpStatus.OK);

    }

    @GetMapping("/services")
    public ModelAndView loadServiceForm(){
        List <Services> servicesList = servicesRepo.findAll();

        return new ModelAndView("/services", new HashMap() {
            {
                put("servicesList", servicesList);
            }
        }, HttpStatus.OK);
    }

    @GetMapping("/editService/updateService/{id}")
    public String updateService(@PathVariable("id") Long id, String serviceName, String serviceCreatedBy, String serviceDescription, String serviceCategory , String pictureUrl , String servicePrice) {

        Services updateService = servicesRepo.findById(id).get();

        try {
            updateService.setServiceCreatedBy(serviceCreatedBy);
            updateService.setServiceCategory(serviceCategory);
            updateService.setServiceImage(pictureUrl);
            updateService.setServiceName(serviceName);
            updateService.setServicePrice(servicePrice);
            updateService.setServiceDescription(serviceDescription);
            servicesRepo.save(updateService);
        }catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/servicesControlAdmin";
    }


    @GetMapping("/deleteService/{id}")
    public String deleteService(@PathVariable("id") Long id) {
        Services service = servicesRepo.findById(id).get();
        servicesRepo.delete(service);
        return "redirect:/servicesControlAdmin";
    }



}
