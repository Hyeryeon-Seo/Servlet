<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
	String strLength= request.getParameter("length"); //T: int length = Integer.parseInt(request. ...))
	String[] lengthArray = request.getParameterValues("measure");  // T- String[] units = ... ("unit")
	
	double length = Double.parseDouble(strLength);
	
	String lengthString = ""; 
	for(int i = 0; i < lengthArray.length; i++) {
		if(lengthArray[i].equals("inch")) {
			
			double inchLength = length * 0.393701;
			String strInchLength = Double.toString(inchLength); // string화 시킬 필요 없이 그냥 붙이면 되는건가 ? ㅠㅠ
			lengthString += strInchLength + " in<br>";  // T- "in" + "<br>" 추가해주면 됨 
			
		}   else if (lengthArray[i].equals("yard")) {
			
			double yardLength = length * 0.010936;
			String strYardLength = Double.toString(yardLength);
			lengthString += strYardLength + "<br>";
			
		} else if (lengthArray[i].equals("feet")) {
			
			double feetLength = length * 0.032808;
			String strFeetLength = Double.toString(feetLength);
			lengthString += strFeetLength + "<br>";
			
		} else {
			
			double meterLength = length * 0.01;
			String strMeterLength = Double.toString(meterLength);
			lengthString += strMeterLength + "<br>";
		}
		
	}
	
	
	%>
	
	
	
	
	
	<div class="container">
		<h2>변환 결과</h2>
		<div><%= length%>cm</div>
		<hr>
		<div><%= lengthString %></div>
		
	</div>


</body>
</html>