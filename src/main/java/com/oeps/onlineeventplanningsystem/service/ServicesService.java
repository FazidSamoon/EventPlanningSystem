package com.oeps.onlineeventplanningsystem.service;

import com.oeps.onlineeventplanningsystem.model.Services;

import java.util.HashMap;
import java.util.List;

public interface ServicesService {
    void createService(Services services);

    void searchServiceByName(String name);


    List<Services> getAllServices();

//    String createService(String serviceName, String serviceCreatedBy, String serviceDescription, String serviceCategory, String pictureUrl, String servicePrice);
}
