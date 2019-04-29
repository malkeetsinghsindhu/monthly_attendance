<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body>  
<h1>Employees List </h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Emp_id</th><th>Emp_Name</th><th>Day1</th><th>Day2</th><th>Day3</th><th>Day4</th><th>Day5</th><th>Day6</th><th>Day7</th><th>Day8</th><th>Day9</th><th>Day10</th><th>Day11</th><th>Day12</th><th>Day13</th><th>Day14</th><th>Day15</th><th>Day16</th><th>Day17</th><th>Day18</th><th>Day19</th><th>Day20</th><th>Day21</th><th>Day22</th><th>Day23</th><th>Day24</th><th>Day25</th><th>Day26</th><th>Day27</th><th>Day28</th><th>Day29</th><th>Day30</th><th>Day31</th></tr>  
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
   </tr>  
   </c:forEach>  
   </table>  
   </body>
   </html>