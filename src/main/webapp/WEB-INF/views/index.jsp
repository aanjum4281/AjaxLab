<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax Lab</title>
</head>
<body>
<h1> Hello world</h1>
<div id="science"></div>

<script> 
var request = new XMLHttpRequest();
request.open("GET", "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json")

request.onload = function() {
	console.log(request.responseText);
	var data = JSON.parse(request.responseText);
	
	console.log(data.complete);
	console.log(data.tiny);
	
	/* only prints first and last name at index 0 */
/* 	document.getElementById("science").append(data.complete[0].firstName + " " +data.complete[0].lastName); */
	
	//runs the print method for the scientist at index one
	for (var i = 0; i < data.complete.length; i++)
	renderHTML(data.complete[i]);
};

function renderHTML (data) {
	var htmlString = "<p>" + data.firstName + " " + data.lastName + " " 
	+ data.innovation + " " + data.year + "</p>"
	document.getElementById("science").insertAdjacentHTML("beforeend", htmlString)
}



request.send();
</script>
</body>
</html>