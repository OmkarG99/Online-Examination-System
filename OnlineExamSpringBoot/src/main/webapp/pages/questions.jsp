${wel}


<html>
<head>

<script>

var xhttp;
// AJAX - Asynchronous JavaScript With XML
function submitAnswer()
{

	//alert("clicked");
	 xhttp = new XMLHttpRequest();
	  
	  var ans=document.myForm.opt.value;
	  var oans=document.myForm.qans.value;
	 // alert(oans);
	  var qno=document.myForm.qno.value;
	  var qtxt=document.myForm.qtxt.value;
	  
	  //alert(ans);
	  
	  var data="?ans=" + ans + "&oans=" + oans + "&qno=" + qno + "&qtxt=" + qtxt;
	  
	  xhttp.open("GET", "submitAns" + data, true);
	  
	  xhttp.send();

}
</script>

<style>
h1{
color:red;
font-size:20px;
text-align:center;
margin:25px;
}
</style>

</head>
<body  bgcolor="pink">
<h1>Welcome to Online Examination_</h1>

<%@page import="java.util.List"%>
<%@page import="com.example.dao.MyDao"%>
<%@page isELIgnored="false"%>

<form name="myForm">
<center>
<input type="text" name="qno" value="${question.qno}"><br><br>
<textarea rows=4 cols=50 name="qtxt" value="${question.qtxt}"> ${question.qtxt} </textarea><br><br>

<input type="radio" name="opt" value="${question.opt1}" onclick="submitAnswer()"> <span>${question.opt1}</span><br>
<input type="radio" name="opt" value="${question.opt2}" onclick="submitAnswer()"> <span>${question.opt2}</span><br>
<input type="radio" name="opt" value="${question.opt3}" onclick="submitAnswer()"> <span>${question.opt3}</span><br><br>

<input type="hidden" name="qans" value="${question.qans}">

<input type="submit"  formaction="next" value="next"><br><br>
 
<input type="submit" formaction="previous" value="previous"><br><br><br><br>

<input type="submit" formaction="endExam" value="End Exam"><br><br><br><br>

 
 <a href="/">Logout</a><br><br><br>
 
</center></form>
</body>
</html>