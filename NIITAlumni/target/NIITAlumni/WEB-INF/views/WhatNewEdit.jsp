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
	<%@include file="header.jsp"%><br>
	<br>
	<div class="container-fluid" id="fullwrapper">
		<div class="rows">
			<div style="margin-top: 150px">
				<form:form method="POST" action="updateWhatNew"
					modelAttribute="wnew">
					<table class="table table-bordered" align="center"
						style="width: 90%">
						<tr>
							<td><form:label path="id">What New ID : </form:label></td>
							<td><form:input path="id" value="${wnew.id}" readonly="true"
									class="form-control" type="text" readOnly="true" /></td>
						</tr>
						<tr>
							<td><form:label path="title">What New Title : </form:label></td>
							<td><form:input path="title" value="${wnew.title}"
									class="form-control" /></td>
						</tr>
						<tr>
							<td><form:label path="desc">Description : </form:label></td>
							<td><form:input path="desc" value="${wnew.desc}"
									class="form-control" /></td>
						</tr>

						<tr>
							<td colspan="2"><input type="submit" value="MODIFY" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>