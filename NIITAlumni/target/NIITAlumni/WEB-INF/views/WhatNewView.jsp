<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#bd {
	margin-top: 100px;
}
</style>
</head>

<body>
	<%@include file="header.jsp"%><br><br>
	<div class="container-fluid" id="fullwrapper">
		<div class="rows">
			<div class="col-md-7">
				<div id="logo-container"></div>
				<div class="col-sm-8 col-md-10 col-md-offset-1">
					<c:if test="${!empty newList}">
						<div class="container">
							<table class="table">
								<thead>
									<tr style="text-align: center;" height="40px">
										<td>Title</td>
										<td>Description</td>
										<c:if test="${pageContext.request.userPrincipal.name != null}">
											<c:if
												test="${pageContext.request.userPrincipal.name == 'meghkul'}">
												<td>Edit</td>
												<td>Delete</td>
											</c:if>
										</c:if>
										<td>View Bulletine</td>
									</tr>
								</thead>
								<c:forEach items="${newList}" var="wnew">
									<tr
										style="background-color: white; color: black; text-align: center;"
										height="30px">
										<td><c:out value="${wnew.title}" /></td>
										<td><c:out value="${wnew.desc}" /></td>
										<c:if test="${pageContext.request.userPrincipal.name != null}">
											<c:if
												test="${pageContext.request.userPrincipal.name == 'meghkul'}">
												<td width="50">
												<a href="admin/WhatNewEdit?id=${wnew.id}">Edit</a></td>
												<td width="50">
												<a href="admin/WhatNewDelete?id=${wnew.id}">Delete</a></td>
											</c:if>
										</c:if>
										<td width="50"><a
											href="<c:url value="/WhatNewViewRecord?id=${wnew.id}"/>">View
												</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</c:if>



				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>