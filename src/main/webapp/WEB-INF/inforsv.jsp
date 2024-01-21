<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Information sur la réservation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
   <%@ include file="/menu.jsp" %>
    <div class="container">
      <c:if test="${!empty message }">
           <p  class="alert alert-success mt-3" role="alert">
		     <c:out value="${message }"></c:out>
		</p>
           
      </c:if>
     </div>
      <div class="container">
        <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom</th>
      <th scope="col">Prenom</th>
      <th scope="col">Telephone</th>
       <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      
      <td><c:out value="${client.nom }"></c:out></td>
      <td><c:out value="${client.prenom }"></c:out></td>
      <td><c:out value="${client.telephone }"></c:out></td>
      <td><c:out value="${client.email }"></c:out></td>
    </tr>
   
  </tbody>
</table>
     <div class="card" style="width: 18rem;">
    <div class="card-body">
        <h5 class="card-title">Information reservation</h5>
        <h6 class="card-subtitle mb-2 text-body-secondary">
            <c:if test="${not empty client.reservation and not empty client.reservation.type}">
                <c:out value="${client.reservation.type}"></c:out>
            </c:if>
        </h6>
        <p class="card-text">
            <c:if test="${not empty client.reservation and not empty client.reservation.option}">
                <c:out value="${client.reservation.option}"></c:out>
            </c:if>
        </p>
        <p class="card-text">
            <c:if test="${not empty client.reservation and not empty client.reservation.option}">
                <c:out value="${client.reservation.montant}"></c:out>
            </c:if>
        </p>
        <a href="#" class="card-link">Menu</a>
        <a href="#" class="card-link">retour</a>
    </div>
</div>
    </div>
     
</body>
</html>