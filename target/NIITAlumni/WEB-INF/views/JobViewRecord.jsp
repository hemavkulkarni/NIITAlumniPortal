<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="header.jsp" %><br><br>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
<title>Insert title here</title>
</head>

<body>

<div class="register-form " >
   
  <div class="form">
   <h3>View Details </h3>
    <c:if test="${!empty jobObject}"> 
    <form:form class="login-form"  method="POST" action="JobView"  modelAttribute="job">
       <table style="margin-left: 15%;">
          <tr>
            <td><c:out value=" Title : ${jobObject.job_type}" />
   
          </tr>
         <tr><td>   <c:out value="Company Name : ${jobObject.company_name}" /> </td></tr>
          <tr><td>   <c:out value="Description : ${jobObject.desc}" /> </td></tr>
          <tr><td>   <c:out value="Location : ${jobObject.location}" /> </td></tr>
          <tr><td>   <c:out value="Salary : ${jobObject.salary}" /> </td></tr>
          <tr><td>   <c:out value="Working Hours : ${jobObject.workinghour}" /> </td></tr>
          
        <tr><td><a href="<c:url value='/JobView'/>">Back To Main Category</a></td></tr>
          </table>
      
    </form:form>
    </c:if>
  </div>
</div>
</body>
</html>