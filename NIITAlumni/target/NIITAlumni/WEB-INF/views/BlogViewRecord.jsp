<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="header.jsp"%><br><br><br>
<br>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
<title>Insert title here</title>
</head>

<body>

	<div class="register-form ">

		<div class="form">
			<h3>View Details</h3>
			<c:if test="${!empty blogObject}">
				<form:form class="login-form" method="POST" action="BlogView"
					modelAttribute="blog">
					<table style="margin-left: 15%;">
						<tr>
							<td><c:out value=" Title : ${blogObject.blogtitle}" />
						</tr>
						<tr>
							<td><c:out value="Description : ${blogObject.blogdesc}" />
							</td>
						</tr>

						<tr>
							<td><a href="BlogView">Back To Main Category</a></td>
						</tr>
					</table>

				</form:form>
			</c:if>
		</div>
	</div>
</body>
</html>