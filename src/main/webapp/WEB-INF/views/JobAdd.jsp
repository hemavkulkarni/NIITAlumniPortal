
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Job</title>
</head>
<body>
	<%@include file="header.jsp"%><br><br>
	<div class="container-fluid" id="fullwrapper">
			<div class="col-md-7">
				<div id="logo-container"></div>
				<div class="col-sm-8 col-md-10 col-md-offset-1">
					<div class="form-group input-group">

						<center>
							<h3>New Job Opportunity?</h3>
						</center>
					</div>

					<form:form method="POST" action="JobSave" class="login-form"
						commandName="job">
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='job_type'
								placeholder="Job Title" />
							<form:errors path="job_type" cssStyle="color: #ff0000;" />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='company_name'
								placeholder="Company Name" />
							<form:errors path="company_name" cssStyle="color: #ff0000;" />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='desc'
								placeholder="Description" />
							<form:errors path="desc" cssStyle="color: #ff0000;" />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='location'
								placeholder="Location" />
							<form:errors path="location" cssStyle="color: #ff0000;" />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='salary'
								placeholder="Salary" />
							<form:errors path="salary" cssStyle="color: #ff0000;" />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='workinghour'
								placeholder="Working Hour" />
							<form:errors path="workinghour" cssStyle="color: #ff0000;" />
						</div>
						
						<div class="form-group">
							<button class="btn btn-def btn-block">ADD JOB OPPORTUNITY</button>
						</div>

					</form:form>
				</div>
			</div>
		</div>
</body>
</html>
