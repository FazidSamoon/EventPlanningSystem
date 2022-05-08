package com.oeps.onlineeventplanningsystem.service;

import com.oeps.onlineeventplanningsystem.model.Services;
import com.oeps.onlineeventplanningsystem.repositories.ServicesRepo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ServicesServiceImpl implements ServicesService {

    @Autowired
    private ServicesRepo servicesRepo;



    @Override
    public void createService(Services services) {

    }

    @Override
    public void searchServiceByName(String name) {
        servicesRepo.findByServiceName(name);
    }

    @Override
    public List<Services> getAllServices() {

        return servicesRepo.findAll();
    }

//    @Override
//    public String createService(String serviceName, String serviceCreatedBy, String serviceDescription, String serviceCategory, String pictureUrl, String servicePrice) {
//
//        try {
//            Services services = new Services();
//            services.setServiceName(serviceName);
//            services.setServiceCreatedBy(serviceCreatedBy);
//            services.setServiceDescription(serviceDescription);
//            services.setServiceCategory(serviceCategory);
//            services.setServiceImage(pictureUrl);
//            services.setServicePrice(servicePrice);
//            servicesRepo.save(services);
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//
//        return "Service created successfully";
//    }
}
