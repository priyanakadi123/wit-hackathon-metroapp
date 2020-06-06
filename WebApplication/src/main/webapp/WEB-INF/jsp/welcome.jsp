<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<script type="text/javascript">
//<![CDATA[
// array of possible countries in the same order as they appear in the country selection list

    var stationsArray = new Array();
    
    <c:forEach items="${routes}" var="route">
    	var rname="${route.routeName}";
    	var snames = new Array();
    	snames=${route.stations};
    	//snames=${route.routeId};
    	stationsArray[rname]=snames;   
        
    </c:forEach> 
    	 
    	 
    	
    	 function routeChange(selectObj) {
    	 	// get the index of the selected option
    	 	var idx = selectObj.selectedIndex;
    	 	// get the value of the selected option
    	 	var which = selectObj.options[idx].value;
    	 	// use the selected option value to retrieve the list of items from the coutnryLists array
    	 	cList = stationsArray[which];
    	 	// get the country select element via its known id
    	 	var cSelect = document.getElementById("station");
    	 	// remove the current options from the country select
    	 	var len=cSelect.options.length;
    	 	while (cSelect.options.length > 0) {
    	 		cSelect.remove(0);
    	 	}
    	 	var newOption;
    	 	// create new options
    	 	for (var i=0; i<cList.length; i++) {
    	 		newOption = document.createElement("option");
    	 		newOption.value = cList[i];  // assumes option string and value are the same
    	 		newOption.text=cList[i];
    	 		// add the new option
    	 		try {
    	 			cSelect.add(newOption);  // this will fail in DOM browsers but is needed for IE
    	 		}
    	 		catch (e) {
    	 			cSelect.appendChild(newOption);

    	 		}
    	 	} 
    	 }
</script>
<div class="form-style-6">
<form action="/list-trains" >
<center>
        <h1><marquee bgcolor="#0FBF00">Live Seats Viewer </marquee> </h1>

	<!-- <input type="text" name="route" id="route" class="form-control" placeholder="Route Name"> -->
	<select id="route" name="route" onchange="routeChange(this)" >
	<option value="" selected disabled hidden>Choose Route</option>
    <c:forEach items="${routes}" var="route">
        <option value="${route.routeName}">${route.routeName}</option>
    </c:forEach>
	</select>
	<select id="station" name="station" placeholder="From Station">
	<option value="0">Boarding Station</option>
	</select>	
	<button type="submit" class="btn btn-primary">Search</button>
</form> 
</div>


<%@ include file="common/footer.jspf"%>