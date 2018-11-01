<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.mashape.unirest.http.HttpResponse"
    import="com.mashape.unirest.http.JsonNode"
    import="com.mashape.unirest.http.Unirest"
    import="com.mashape.unirest.http.exceptions.UnirestException"
    import="java.io.PrintWriter"
    import="java.io.StringWriter"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
  <%
  try {
  String json = null;
  HttpResponse <String> resp = Unirest.get("https://client.sibertama.com/lms-web/services").asString();
  json = resp.getBody();
  }
  catch (ArithmeticException e) {
	  StringWriter sw = new StringWriter();
      e.printStackTrace(new PrintWriter(sw));
      String exceptionAsString = sw.toString();
      out.println(exceptionAsString);
  }
  %>
</body>
</html>