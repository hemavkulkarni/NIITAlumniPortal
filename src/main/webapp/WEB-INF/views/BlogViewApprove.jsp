<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog View And Approve</title>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style type="text/css">
#bd {
	margin-top: 100px;
}
</style>
</head>

<body>
	<%@include file="header.jsp"%><br>
	<br>
	<div class="container-fluid" id="fullwrapper">
		<div class="rows">
			<div class="col-md-7">
				<div id="logo-container"></div>
				<div class="col-sm-8 col-md-10 col-md-offset-1">
					<c:if test="${!empty blogList}">
						<div class="container">
							<table class="table">
								<thead>
									<tr style="text-align: center;" height="40px">
										<td>Blog Title</td>
										<td>Description</td>
										<c:if test="${pageContext.request.userPrincipal.name != null}">
											<c:if
												test="${pageContext.request.userPrincipal.name == 'meghkul'}">
												<td>Approve</td>
												<td>Delete</td>
											</c:if>
										</c:if>
										<td>View Blog</td>
									</tr>
								</thead>
								<c:forEach items="${blogList}" var="blog">
									<tr
										style="background-color: white; color: black; text-align: center;"
										height="30px">
										<td>${blog.blogtitle}</td>
										<td>${blog.blogdesc}</td>
										<c:if test="${pageContext.request.userPrincipal.name != null}">
											<c:if
												test="${pageContext.request.userPrincipal.name == 'meghkul'}">
												<td width="50"><a
													href="blogApprove?blogid=${blog.blogid}"> Approve
												</a></td>
												<td width="50"><a
													href="delete?blogid=${blog.blogid}">Delete</a></td>
											</c:if>
										</c:if>
										<td width="50"><a
											href="BlogViewRecord?blogid=${blog.blogid}">View Blog</a></td>
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