<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@page import="java.util.Scanner"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page isELIgnored="false" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ page import="com.google.gson.Gson"%>
   <%@ page import="com.google.gson.JsonObject"%>
   <%@page import="java.util.*" %>
   <%@page import="com.google.gson.*" %>
 
 <%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>();
map.put("label", "Day1"); 
map.put("y", 7); 
list.add(map);

map = new HashMap<Object,Object>(); map.put("label", "Day2"); map.put("y", 9); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day3"); map.put("y", 6); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day4"); map.put("y", 8); list.add(map);

map = new HashMap<Object,Object>(); map.put("label", "Day7"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day8"); map.put("y", 4); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day9"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day10"); map.put("y", 10); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day11"); map.put("y", 8); list.add(map);

map = new HashMap<Object,Object>(); map.put("label", "Day14"); map.put("y", 7); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day15"); map.put("y", 5); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day16"); map.put("y", 9); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day17"); map.put("y", 10); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day18"); map.put("y", 9); list.add(map);

map = new HashMap<Object,Object>(); map.put("label", "Day21"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day22"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day23"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day24"); map.put("y", 9); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day25"); map.put("y", 7.10); list.add(map);

map = new HashMap<Object,Object>(); map.put("label", "Day28"); map.put("y", 6.4); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day29"); map.put("y", 9.6); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day30"); map.put("y", 8.1); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Day31"); map.put("y", 5.9); list.add(map);

String dataPoints = gsonObj.toJson(list);

%>
 
 
 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "light1",
	title: {
		text: "Working Hours of January"
	},
	subtitles: [{
		text: ""
	}],
	data: [{
		type: "doughnut",
		yValueFormatString: "#,##0",
		indexLabel: "{label}: {y} Hours",
		toolTipContent: "{y} Hours tonnes",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>  
</head>
<body>  
<h1>Employees List of Jan Month 2019 </h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Emp_id</th><th>Emp_Name</th><th>Jan1</th><th>Jan2</th><th>Jan3</th><th>Jan4</th><th>Jan5</th><th>Jan6</th><th>Jan7</th><th>Jan8</th><th>Jan9</th><th>Jan10</th><th>Jan11</th><th>Jan12</th><th>Jan13</th><th>Jan14</th><th>Jan15</th><th>jan16</th><th>Jan17</th><th>Jan18</th><th>Jan19</th><th>Jan20</th><th>jan21</th><th>jan22</th><th>Jan23</th><th>Jan24</th><th>Jan25</th><th>Jan26</th><th>Jan27</th><th>Jan28</th><th>Jan29</th><th>Jan30</th><th>Jan31</th></tr>  

   <c:forEach var="emp" items="${list}">   
    <tr>  
   <td>${emp.id} </td>  
   <td>${emp.emp_name}</td>  
  <td>${emp.day1}</td>  
   <td>${emp.day2}</td>
   <td>${emp.day3}</td>
   <td>${emp.day4}</td>
   <td>${emp.day5}</td>
   <td>${emp.day6}</td>
   <td>${emp.day7}</td>
   <td>${emp.day8}</td>
   <td>${emp.day9}</td>
   <td>${emp.day10}</td>
   <td>${emp.day11}</td>
   <td>${emp.day12}</td>
   <td>${emp.day13}</td>
   <td>${emp.day14}</td>
   <td>${emp.day15}</td>
   <td>${emp.day16}</td>
   <td>${emp.day17}</td>
   <td>${emp.day18}</td>
   <td>${emp.day19}</td>
   <td>${emp.day20}</td>
   <td>${emp.day21}</td>  
   <td>${emp.day22}</td>
   <td>${emp.day23}</td>
   <td>${emp.day24}</td>
   <td>${emp.day25}</td>
   <td>${emp.day26}</td>
   <td>${emp.day27}</td>
   <td>${emp.day28}</td>
   <td>${emp.day29}</td>
   <td>${emp.day30}</td>
   <td>${emp.day31 }</td> 
   </c:forEach>  
    </table>
 <!--    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>   
 <div id="chartContainer" style="height: 370px; width: 100%;"></div> -->
    <h1>Employee Details</h1>
   <table border="2" width="70%" cellpadding="2">  
   <tr><th>Emp_id</th><th>Emp_Name</th></tr>
    <c:forEach var="emp" items="${list}">   
    <tr>  
   <td>${emp.id} </td>  
   <td>${emp.emp_name}</td>  
   </c:forEach>  
    </table> <br>  
    <h1> week1</h1>
    <table border="2" width="70%" cellpadding="2">
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
  <td>${emp.id}</td> 
   <td>${emp.day1}</td>  
   <td>${emp.day2}</td>
   <td>${emp.day3}</td>
   <td>${emp.day4}</td>
   <td>${emp.day5}</td>
   <td>${emp.day6}</td>
   <td>${emp.day7}</td> 
   <td>${emp.day1+emp.day2+emp.day3+emp.day4+emp.day7}</td> 
     
   </tr>
</c:forEach>
 <c:forEach var="emp" items="${list}">      
   <script src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
	
var data = google.visualization.arrayToDataTable([
['', 'Hours per Day'],
['Tuesday',${emp.day1}],
['Wednesday', ${emp.day2}],
['Thursday', ${emp.day3}],
['Friday', ${emp.day4}],

['Monday',${emp.day7}]
]);

var options = {
title: 'Week 1st Activities',
pieHole: 0.4,
};

var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
chart.draw(data, options);
}

</script>
   </c:forEach> 
   
    <div id="donutchart" style="width: 900px; height: 500px;"></div>
  
    <table border="2" width="70%" cellpadding="2">
     <h1> week2</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
   <td>${emp.id} </td> 
   <td>${emp.day8}</td>  
   <td>${emp.day9}</td>
   <td>${emp.day10}</td>
   <td>${emp.day11}</td>
   <td>${emp.day12}</td>
   <td>${emp.day13}</td>
   <td>${emp.day14}</td> 
   <td>${emp.day8+emp.day9+emp.day10+emp.day11+emp.day14}</td> 
   
   </c:forEach>  
   <table border="2" width="70%" cellpadding="2">
     <h1> week3</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
  <td>${emp.id} </td> 
   <td>${emp.day15}</td>  
   <td>${emp.day16}</td>
   <td>${emp.day17}</td>
   <td>${emp.day18}</td>
   <td>${emp.day19}</td>
   <td>${emp.day20}</td>
   <td>${emp.day21}</td> 
   <td>${emp.day15+emp.day16+emp.day17+emp.day18+emp.day21}</td> 
   
   </c:forEach>  
   <table border="2" width="70%" cellpadding="2">
     <h1> week4</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">  
    <tr>  
    
  <td>${emp.id} </td> 
   <td>${emp.day22}</td>  
   <td>${emp.day23}</td>
   <td>${emp.day24}</td>
   <td>${emp.day25}</td>
   <td>${emp.day26}</td>
   <td>${emp.day27}</td>
   <td>${emp.day28}</td> 
    <td>${emp.day22+emp.day23+emp.day24+emp.day25+emp.day28}</td> 
   
   </c:forEach>  
    <table border="2" width="70%" cellpadding="2">
     <h1> week5</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Total hours</th>
   <c:forEach var="emp" items="${list}"> 
    <tr>  
   <td>${emp.id} </td> 
   <td>${emp.day29}</td>  
   <td>${emp.day30}</td>
   <td>${emp.day31}</td>
   <td></td>
   <td></td>
   <td></td>
   <td></td>
   <td>${emp.day29+emp.day30+emp.day31}</td> 
   </tr>
   </c:forEach>  
   </body>
   </html> 
   