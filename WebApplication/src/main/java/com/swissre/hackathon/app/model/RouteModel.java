
	package com.swissre.hackathon.app.model;

	import java.util.List;

	import javax.persistence.*;

	import com.swissre.hackathon.app.util.StringListConverter;

	
	public class RouteModel {

	    private String routeId;
		

	    private String routeName;
		

	    private String source;
		

	    private String destination;
	    
	    
	    private String stations;
	    
	    public RouteModel() {};

	    public RouteModel(String routeId, String routeName, String source, String destination, String stations) {
	        this.routeId = routeId;
	        this.routeName = routeName;
	        this.source = source;
	        this.destination = destination;
	        this.stations = stations;
	    }

	    public String getRouteId() {
	        return routeId;
	    }

	    public void setRouteId(String routeId) {
	        this.routeId = routeId;
	    }

	    public String getRouteName() {
	        return routeName;
	    }

	    public void setRouteName(String routeName) {
	        this.routeName = routeName;
	    }

	    public String getSource() {
	        return source;
	    }

	    public void setSource(String source) {
	        this.source = source;
	    }

	    public String getDestination() {
	        return destination;
	    }

	    public void setDestination(String destination) {
	        this.destination = destination;
	    }

	    public String getStations() {
	        return stations;
	    }

	    public void setStations(String stations) {
	        this.stations = stations;
	    }
	}



