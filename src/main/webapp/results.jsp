<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<h1>Bmi interpretation resutls</h1>

<h3>Result of NIC analysis is</h3>
<%
	String nic = request.getParameter("nic");

	NICThing nict = new NICThing();

	try {
		//BmiProp bmiProp = bmiCalculator.createBmiProp(height, weight);
                NICProp nicprop = nict.createNICProp(nic);
		//float bmi = bmiCalculator.calculate(bmiProp);
		String output = nict.generate(nicprop);
                out.println(output);
	} catch (Exception ex) {
		out.println(ex.getMessage());
	}	
%>
</head>
<body>

</body>
</html>