<!DOCTYPE HTML>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/resources/libs" var="js1"/>
<spring:url value="/resources/app" var="js"/>

<html lang="en">
  <head>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
    <link href="demo.css" rel="stylesheet" type="text/css" />
    
  </head>
  <body ng-app="chatApp">
  <%@include file="header.jsp" %><br><br>
    <div ng-controller="ChatCtrl" class="container">
      <form ng-submit="addMessage()" name="messageForm">
        <input type="text" placeholder="Compose a new message..." ng-model="message"  class="form-control" />
        <div class="info">
          <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
          <button class="btn btn-def btn-block" ng-disabled="message.length > max || message.length === 0" class="form-control" >Send</button>
          
        </div>
      </form>
      <hr />
      <p ng-repeat="message in messages | orderBy:'time':true" class="message">
        <time>{{message.time | date:'HH:mm'}}</time>
        <span ng-class="{self: message.self}">{{message.message}}</span>
      </p>
    </div>
    
    
    
    <script src="${js1}/sockjs/sockjs.min.js"></script>
    <script src="${js1}/stomp-websocket/lib/stomp.min.js"></script>
    <script src="${js1}/angular/angular.min.js"></script>
    <script src="${js1}/lodash/dist/lodash.min.js"></script>
    <script src="${js}/app.js"></script>
    <script src="${js}/controllers.js"></script>
    <script src="${js}/services.js"></script>
    
<!--     <script src="libs/sockjs/sockjs.min.js" type="text/javascript"></script> -->
<!--     <script src="libs/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script> -->
<!--     <script src="libs/angular/angular.min.js"></script> -->
<!--     <script src="libs/lodash/dist/lodash.min.js"></script> -->
<!--     <script src="app/app.js" type="text/javascript"></script> -->
<!--     <script src="app/controllers.js" type="text/javascript"></script> -->
<!--     <script src="app/services.js" type="text/javascript"></script> -->
  </body>
</html>