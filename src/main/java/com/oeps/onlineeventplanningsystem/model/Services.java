package com.oeps.onlineeventplanningsystem.model;


import lombok.*;

import javax.persistence.*;

@Entity
public class Services {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long serviceId;

    private String serviceName;

    private String serviceDescription;

    private String servicePrice;

    private String serviceCategory;

    private String serviceCreatedBy;

    @Column(length = 2000)
    private String serviceImage;

    public Services() {
    }

    public Services(long serviceId, String serviceName, String serviceDescription, String servicePrice, String serviceCategory, String serviceCreatedBy, String serviceImage) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.serviceDescription = serviceDescription;
        this.servicePrice = servicePrice;
        this.serviceCategory = serviceCategory;
        this.serviceCreatedBy = serviceCreatedBy;
        this.serviceImage = serviceImage;
    }

    public long getServiceId() {
        return serviceId;
    }

    public void setServiceId(long serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public String getServicePrice() {
        return servicePrice;
    }

    public void setServicePrice(String servicePrice) {
        this.servicePrice = servicePrice;
    }

    public String getServiceCategory() {
        return serviceCategory;
    }

    public void setServiceCategory(String serviceCategory) {
        this.serviceCategory = serviceCategory;
    }

    public String getServiceCreatedBy() {
        return serviceCreatedBy;
    }

    public void setServiceCreatedBy(String serviceCreatedBy) {
        this.serviceCreatedBy = serviceCreatedBy;
    }

    public String getServiceImage() {
        return serviceImage;
    }

    public void setServiceImage(String serviceImage) {
        this.serviceImage = serviceImage;
    }
}
