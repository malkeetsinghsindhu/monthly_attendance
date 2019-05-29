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
		text: "Working Hours of February"
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
<h1>Feb List of Feb Month 2019 </h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Emp_id</th><th>Emp_Name</th><th>feb1</th><th>feb2</th><th>feb3</th><th>feb4</th><th>feb5</th><th>feb6</th><th>feb7</th><th>feb8</th><th>feb9</th><th>feb10</th><th>feb11</th><th>feb12</th><th>feb13</th><th>feb14</th><th>feb15</th><th>feb16</th><th>feb17</th><th>feb18</th><th>feb19</th><th>feb20</th><th>feb21</th><th>feb22</th><th>feb23</th><th>feb24</th><th>feb25</th><th>feb26</th><th>feb27</th><th>feb28</th></th></tr>  

   <c:forEach var="feb" items="${list}">   
    <tr>  
   <td>${feb.id} </td>  
   <td>${feb.emp_name}</td>  
  <td>${feb.day1}</td>  
   <td>${feb.day2}</td>
   <td>${feb.day3}</td>
   <td>${feb.day4}</td>
   <td>${feb.day5}</td>
   <td>${feb.day6}</td>
   <td>${feb.day7}</td>
   <td>${feb.day8}</td>
   <td>${feb.day9}</td>
   <td>${feb.day10}</td>
   <td>${feb.day11}</td>
   <td>${feb.day12}</td>
   <td>${feb.day13}</td>
   <td>${feb.day14}</td>
   <td>${feb.day15}</td>
   <td>${feb.day16}</td>
   <td>${feb.day17}</td>
   <td>${feb.day18}</td>
   <td>${feb.day19}</td>
   <td>${feb.day20}</td>
   <td>${feb.day21}</td>  
   <td>${feb.day22}</td>
   <td>${feb.day23}</td>
   <td>${feb.day24}</td>
   <td>${feb.day25}</td>
   <td>${feb.day26}</td>
   <td>${feb.day27}</td>
   <td>${feb.day28}</td>
   </c:forEach>  
    </table>

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
    <tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th> <th>Total hours</th>
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
   <td>${emp.day1+emp.day4+emp.day5+emp.day6+emp.day7}</td> 
     
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
['Friday',${emp.day1}],
['Monday', ${emp.day4}],
['Tuesday', ${emp.day5}],
['Wednesday', ${emp.day6}],

['Thursday',${emp.day7}]
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
    <table border="2" width="70%" cellpadding="2">
    <tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
  <td>${emp.id}</td> 
   <td>${emp.day8}</td>  
   <td>${emp.day9}</td>
   <td>${emp.day10}</td>
   <td>${emp.day11}</td>
   <td>${emp.day12}</td>
   <td>${emp.day13}</td>
   <td>${emp.day14}</td> 
   <td>${emp.day8+emp.day11+emp.day12+emp.day13+emp.day14}</td> 
     
   </tr>
   </c:forEach>  
   <table border="2" width="70%" cellpadding="2">
        <h1> week3</h1>
    <table border="2" width="70%" cellpadding="2">
    <tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
  <td>${emp.id}</td> 
   <td>${emp.day15}</td>  
   <td>${emp.day16}</td>
   <td>${emp.day17}</td>
   <td>${emp.day18}</td>
   <td>${emp.day19}</td>
   <td>${emp.day20}</td>
   <td>${emp.day21}</td> 
   <td>${emp.day15+emp.day18+emp.day19+emp.day20+emp.day21}</td> 
     
   </tr>
   </c:forEach>  
   <table border="2" width="70%" cellpadding="2">
        <h1> week4</h1>
    <table border="2" width="70%" cellpadding="2">
    <tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
  <td>${emp.id}</td> 
   <td>${emp.day22}</td>  
   <td>${emp.day23}</td>
   <td>${emp.day24}</td>
   <td>${emp.day25}</td>
   <td>${emp.day26}</td>
   <td>${emp.day27}</td>
   <td>${emp.day28}</td> 
   <td>${emp.day22+emp.day25+emp.day26+emp.day27+emp.day28}</td> 
     
   </tr>
   </c:forEach>  
  
   </body>
   </html> 
   