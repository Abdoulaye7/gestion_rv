<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page d'inscription</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
         <div class="container">
         
            <c:if test="${!empty message }">
		           <p  class="alert alert-danger mt-3" role="alert">
				     <c:out value="${message }"></c:out>
				  </p>
           
        </c:if>
           <h1 class=" text-primary mt-4">Formulaire d'inscription</h1>
          
         </div>
         
         <div class="container">
         
         <form method="post" action="client">
         
           <label for="inputPassword5" class="form-label">Nom</label>
		    <input type="text"  class="form-control" name="nom"placeholder="votre nom">
		    
            <label for="inputPassword5" class="form-label">Prenom</label>
		    <input type="text"  class="form-control" name="prenom"  placeholder="votre prenom">
		    
            <label for="inputPassword5" class="form-label">Telephone</label>
		    <input type="text"  class="form-control" name="tel"  placeholder="votre telephone">
		
            <label for="inputPassword5" class="form-label">Email</label>
		    <input type="email"  class="form-control" name="email"  placeholder="votre email">
		    
		    <div class="col-12 mt-3">
              <button class="btn btn-primary" type="submit">Envoyer</button>
          </div>
		    
         </form>
         
         </div>
</body>
</html>