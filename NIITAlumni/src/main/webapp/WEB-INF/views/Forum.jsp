<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
	<div class="row">
		<div class="Absolute-Center is-Responsive">
			<div id="logo-container"></div>
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<div class="form-group input-group">

					<center>
						<h3>
							Add New Forum</a>
						</h3>
					</center>
				</div>


				<form:form method="POST" class="login-form" action="postF"
					commandName="forum">
					<div class="form-group input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span>
						<form:select path="category" class="form-control">
							<form:option value="C" />
							<form:option value="C++" />
							<form:option value="Java" />
							<form:option value=".Net" />
							<form:option value="Oracle" />
							<form:option value="DTJava" />
						</form:select>
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span>
						<form:input class="form-control" type="text" path='forumtitle'
							placeholder="Forum Title" />

					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-comment"></i></span>
						<form:textarea path="forumcontent" class="form-control"
							placeholder="Forum Content" rows="20" />
						<form:errors path="forumcontent" cssStyle="color: #ff0000;" />
					</div>

					<div class="form-group">
						<button class="btn btn-def btn-block">SUBMIT</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>

<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<%@include file="angularform.jsp" %>
<%@include file="footer.jsp" %>
</body>
</html>