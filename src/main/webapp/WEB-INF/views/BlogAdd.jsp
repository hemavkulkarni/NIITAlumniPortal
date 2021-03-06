
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Blog</title>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<body>
	<%@include file="header.jsp"%>
	<br><br>
	<div class="container-fluid" id="fullwrapper">
		<div class="rows">
			<div class="col-md-7">
				<div id="logo-container"></div>
				<div class="col-sm-8 col-md-10 col-md-offset-1">
					<div class="form-group input-group">

						<center>
							<h3>New Blog?</h3>
						</center>
					</div>

					<form:form method="POST" action="BlogSave" class="login-form" commandName="blog">
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='blogtitle'
								placeholder="Blog Title" />
							<form:errors path="blogtitle" cssStyle="color: #ff0000;" />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-comment"></i></span>
							<form:textarea path="blogdesc" class="form-control" placeholder="Blog Description" rows="20"/>
							<form:errors path="blogdesc" cssStyle="color: #ff0000;" />
						</div>

						<div class="form-group">
							<button class="btn btn-def btn-block">SUBMIT</button>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
