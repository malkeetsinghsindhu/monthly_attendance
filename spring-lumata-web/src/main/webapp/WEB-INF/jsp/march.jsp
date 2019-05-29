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
		text: "Working Hours of march"
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
<h1>March List of  Month 2019 </h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Emp_id</th><th>Emp_Name</th><th>march1</th><th>march2</th><th>march3</th><th>march4</th><th>march5</th><th>march6</th><th>march7</th><th>march8</th><th>march9</th><th>march10</th><th>march11</th><th>march12</th><th>march13</th><th>march14</th><th>march15</th><th>march16</th><th>march17</th><th>march18</th><th>march19</th><th>march20</th><th>march21</th><th>march22</th><th>march23</th><th>march24</th><th>march25</th><th>march26</th><th>march27</th><th>march28</th><th>march29</th><th>march30</th><th>march31</th></tr>  

   <c:forEach var="march" items="${list}">   
    <tr>  
   <td>${march.id} </td>  
   <td>${march.emp_name}</td>  
   <td>${march.day1}</td>  
   <td>${march.day2}</td>
   <td>${march.day3}</td>
   <td>${march.day4}</td>
   <td>${march.day5}</td>
   <td>${march.day6}</td>
   <td>${march.day7}</td>
   <td>${march.day8}</td>
   <td>${march.day9}</td>
   <td>${march.day10}</td>
   <td>${march.day11}</td>
   <td>${march.day12}</td>
   <td>${march.day13}</td>
   <td>${march.day14}</td>
   <td>${march.day15}</td>
   <td>${march.day16}</td>
   <td>${march.day17}</td>
   <td>${march.day18}</td>
   <td>${march.day19}</td>
   <td>${march.day20}</td>
   <td>${march.day21}</td>  
   <td>${march.day22}</td>
   <td>${march.day23}</td>
   <td>${march.day24}</td>
   <td>${march.day25}</td>
   <td>${march.day26}</td>
   <td>${march.day27}</td>
   <td>${march.day28}</td>
   <td>${march.day29}</td>
   <td>${march.day30}</td>
   <td>${march.day31}</td>
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
</tr>
</table> 
   
    
  
    <table border="2" width="70%" cellpadding="2">
     <h1> week2</h1>
    <tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th> <th>Total hours</th>
   <c:forEach var="march" items="${list}">   
    <tr>  
   <td>${march.id} </td> 
   <td>${march.day8}</td>  
   <td>${march.day9}</td>
   <td>${march.day10}</td>
   <td>${march.day11}</td>
   <td>${march.day12}</td>
   <td>${march.day13}</td>
   <td>${march.day14}</td> 
   <td>${march.day8+march.day11+march.day12+march.day13+march.day14}</td> 
   
   </c:forEach>
   </tr>
   </table>  
   <table border="2" width="70%" cellpadding="2">
     <h1> week3</h1>
     <tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th> <th>Total hours</th>
   <c:forEach var="march" items="${list}">   
    <tr>  
  <td>${march.id} </td> 
   <td>${march.day15}</td>  
   <td>${march.day16}</td>
   <td>${march.day17}</td>
   <td>${march.day18}</td>
   <td>${march.day19}</td>
   <td>${march.day20}</td>
   <td>${march.day21}</td> 
   <td>${march.day15+march.day18+march.day19+march.day20+march.day21}</td> 
   
   </c:forEach>  
   <table border="2" width="70%" cellpadding="2">
     <h1> week4</h1>
     <tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th> <th>Total hours</th>
   <c:forEach var="march" items="${list}">  
    <tr>  
    
  <td>${march.id} </td> 
   <td>${march.day22}</td>  
   <td>${march.day23}</td>
   <td>${march.day24}</td>
   <td>${march.day25}</td>
   <td>${march.day26}</td>
   <td>${march.day27}</td>
   <td>${march.day28}</td> 
    <td>${march.day22+march.day25+march.day26+march.day27+march.day28}</td> 
   
   </c:forEach>  
   </tr>
   </table>
    <table border="2" width="70%" cellpadding="2">
     <h1> week5</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Total hours</th>
   <c:forEach var="march" items="${list}"> 
    <tr>  
   <td>${march.id} </td> 
   <td>${march.day29}</td>  
   <td>${march.day30}</td>
   <td>${march.day31}</td
    <td></td>
   <td></td>
   <td></td>
    <td></td>
   <td></td>>
   <td>${march.day29}</td> 
   </tr>
</c:forEach>
</tr>
</table>  
   </body>
   </html> 
   