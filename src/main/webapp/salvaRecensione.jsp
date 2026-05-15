<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
String filmId = request.getParameter("filmId");
String voto = request.getParameter("voto");
String recensione = request.getParameter("recensione");

String utente = (String) session.getAttribute("utente");

if (utente == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recensione salvata</title>
</head>
<body>

<h1>Recensione pubblicata!</h1>

<p>Film: <%= filmId %></p>
<p>Utente: <%= utente %></p>
<p>Voto: <%= voto %>/5</p>
<p>Recensione: <%= recensione %></p>

</body>
</html>