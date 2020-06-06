<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	
	<div class="form-style-6">
	<center>
        <h1><marquee bgcolor="#0FBF00">Live Seats Viewer </marquee> </h1>
        
       <!--  <div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
					<div class="table">
 -->
						
		<table class="table table-striped">
			<caption>Following Trains are Approaching....</caption>
			<thead>
				<tr>
					<th>Route</th>
					<th>Coach</th>
					<th>Capacity</th>
					<th>Free Seats</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${trains}" var="train">
					<tr>
						<td>${train.routeName}</td>
						<td>${train.coachName}</td>
						<td>${train.capacity}</td>
						<td>${train.freeSeats}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<%@ include file="common/footer.jspf" %>