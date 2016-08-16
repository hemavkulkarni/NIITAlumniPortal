<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
<title>Insert title here</title>
</head>

<body>

	<div class="register-form ">

		<div class="form">
			<h3>View Details</h3>
			<c:if test="${!empty fObject}">
				<form:form class="login-form" method="POST" action="Forum"
					modelAttribute="forum">
					<table style="margin-left: 15%;">
						<tr>
							<td><c:out value=" Author : ${fObject.forumUserName}" />
						</tr>
						<tr>
							<td><c:out
									value=" Creation DateTime : ${fObject.creationdatetime}" />
						</tr>
						<tr>
							<td><c:out value=" Subject : ${fObject.category}" />
						</tr>
						<tr>
							<td><c:out value="Title : ${fObject.forumtitle}" /></td>
						</tr>
						<tr>
							<td><c:out value=" Description : ${fObject.forumcontent}" />
						</tr>
						<tr>
							<%-- 							<td><a href="<c:url value='/Comment'/>">Comment</a></td> --%>
							<td><button type="button" class="btn btn-info btn-lg"
									data-toggle="modal" data-target="#myModal">Comment</button>

								<div class="modal fade" id="myModal" role="dialog">
									<div class="modal-dialog">

										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="modal-title">Modal Header</h4>
											</div>
											<div class="modal-body">
												<p>
													<input type="text" placeholder="Add Comment"
														class="form-control" />
												</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</div>

									</div>
								</div></td>
						</tr>
					</table>

				</form:form>
			</c:if>
		</div>
	</div>
</body>
</html>