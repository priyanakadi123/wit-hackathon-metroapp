package com.swissre.hackathon.app.service;

import com.google.gson.Gson;
import com.swissre.hackathon.app.model.*;
import com.swissre.hackathon.app.repo.MetroCoachRepository;
import com.swissre.hackathon.app.repo.MetroRepository;
import com.swissre.hackathon.app.repo.RouteRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MetroService {
   
    
    @Autowired
    RouteRepository routeRepository;
    
    @Autowired
    MetroRepository metroRepository;
    
    @Autowired
    MetroCoachRepository metroCoachRepository;
    
    
    public List<RouteModel> retrieveRoutes(){
    	List<Route> routes=routeRepository.findAll();
    	List<RouteModel> routeModel=new ArrayList<>();
    	for (Route route : routes) {
    		RouteModel rt=new RouteModel();
    		rt.setRouteId(route.getRouteId());
    		rt.setSource(route.getSource());
    		rt.setDestination(route.getDestination());
    		rt.setRouteName(route.getRouteName());
    		List<String> stations=route.getStations();
    		String stationjson = new Gson().toJson(stations);
    		rt.setStations(stationjson);
    		routeModel.add(rt);
    		
    	}
    	
    	return routeModel;
    	
    	
    }
    
    public List<Route> retrieveRoutesDb(){
    	List<Route> routes=routeRepository.findAll();
    	
    	
    	return routes;
    	
    	
    }
    
    
    public List<MetroCoachModel> retrieveTrainDetails(String routename,String station) {
        List<MetroCoachModel> filteredTrains = new ArrayList<MetroCoachModel>();
        String routeId=null;
        String source=null;
        String destination=null;
        
        List<Route> routes=retrieveRoutesDb();
        
        for (Route route : routes) {

            if(route.getRouteName().equalsIgnoreCase(routename)){
                routeId=route.getRouteId();
                source=route.getSource();
                destination=route.getDestination();
            }

        }

        List<Metro> metros=metroRepository.findAll();
        
        String metroId=null;
        for (Metro metro : metros) {

           if(metro.getNextStation().trim().equalsIgnoreCase(station.trim()) && metro.getRouteId().equalsIgnoreCase(routeId)){
               metroId=metro.getMetroId();
           }

        }

        List<MetroCoach> coaches=metroCoachRepository.findAll();
        List<MetroCoach> filteredCoaches=new ArrayList<>();
        for (MetroCoach coach : coaches) {

            if(coach.getMetroId().equalsIgnoreCase(metroId)){
                filteredCoaches.add(coach);
            }

        }

        for (MetroCoach coach : filteredCoaches) {

            MetroCoachModel modelObj=new MetroCoachModel();
            modelObj.setRouteName(routename);
            modelObj.setCapacity(coach.getCapacity());
            modelObj.setCoachName(coach.getCoachName());
            modelObj.setSource(source);
            modelObj.setDestination(destination);
            modelObj.setFreeSeats(coach.getFreeSeats());

            filteredTrains.add(modelObj);
        }

        return filteredTrains;
    }
}
