<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
 
 <c:set var="contextRoot" value="${pageContext.request.contextPath}" /> 
 
 <spring:url  var="css" value="/resources/css"/>
 <spring:url  var="js" value="/resources/js"/>
 <spring:url  var="images" value="/resources/images"/>
 
   
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <script>
windows.menu='${title}';
</script>

    <title>RetailStore- ${title}</title>



    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
   <%@include file="./shared/navbar.jsp" %>
    


    <!-- Loading home content page-->
    <c:if  test="${userClickHome==true}">
    <%@include file="home.jsp" %>
    </c:if>
    
       <!-- Loading about  page only -->
    <c:if  test="${userClickAbout==true}">
    <%@include file="about.jsp" %>
    </c:if>
    
       <!-- Loading Contact only page-->
    <c:if  test="${userClickContact==true}">
    <%@include file="contact.jsp" %>
    </c:if>
    
    
    <!-- footer comes from here.. -->
<%@include file="./shared/footer.jsp" %>
   
  

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/js/bootstrap.min.js"></script>
    
    <!-- self coded js file -->
    <script src="${js}/myapp.js"></script>
    

  </body>

</html>