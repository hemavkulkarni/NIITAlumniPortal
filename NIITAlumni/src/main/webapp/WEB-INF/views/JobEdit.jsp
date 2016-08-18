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
			<div style="margin-top: 150px">
				<form:form method="POST" action="updateJob" modelAttribute="job">
					<table class="table table-bordered" align="center"
						style="width: 90%">
						<tr>
							<td><form:label path="id">Job ID : </form:label></td>
							<td><form:input path="id" value="${job.id}"
									readonly="true" class="form-control"  type="text" readOnly="true" /></td>
						</tr>
						<tr>
							<td><form:label path="job_type">Job Title : </form:label></td>
							<td><form:input path="job_type" value="${job.job_type}"
									class="form-control" /></td>
						</tr>
						<tr>
							<td><form:label path="company_name">Company Name : </form:label></td>
							<td><form:input path="company_name" value="${job.company_name}"
									class="form-control" /></td>
						</tr>
						<tr>
							<td><form:label path="desc">Description : </form:label></td>
							<td><form:input path="desc" value="${job.desc}"
									class="form-control" /></td>
						</tr>
												<tr>
							<td><form:label path="location">Company Location : </form:label></td>
							<td><form:input path="location" value="${job.location}"
									class="form-control" /></td>
						</tr>
												<tr>
							<td><form:label path="salary">Salary : </form:label></td>
							<td><form:input path="salary" value="${job.salary}"
									class="form-control" /></td>
						</tr>
						</tr>
												<tr>
							<td><form:label path="workinghour">Working Hours : </form:label></td>
							<td><form:input path="workinghour" value="${job.workinghour}"
									class="form-control" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="MODIFY" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	<%@include file="footer.jsp"%>
</body>
</html>