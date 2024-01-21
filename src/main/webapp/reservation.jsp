<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire reservation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
       <div class="container">
       
           
            <c:if test="${!empty message }">
		           <p  class="alert alert-danger mt-3" role="alert">
				     <c:out value="${message }"></c:out>
				  </p>
           
        </c:if>
           <h1 class=" text-primary mt-4">Formulaire de reservation</h1>
          
         </div>
         
         <div class="container">
         
         <form method="post" action="reservation">
         
           <label for="inputPassword5" class="form-label">Nom</label>
		    <input type="text"  class="form-control" name="nom"placeholder="votre nom">
		    
            <label for="inputPassword5" class="form-label">Prenom</label>
		    <input type="text"  class="form-control" name="prenom"  placeholder="votre prenom">
		    
            <label for="inputPassword5" class="form-label">Telephone</label>
		    <input type="text"  class="form-control" name="tel"  placeholder="votre telephone">
		
            <label for="inputPassword5" class="form-label">Email</label>
		    <input type="email"  class="form-control" name="email"  placeholder="votre email">
		    
		    <select name="type" class="form-select form-select-lg mt-3 mb-3" aria-label="Large select example">
			  
			  <option value="1 chambre">1 Chambre</option>
			  <option value="2 chambre">2 Chambre</option>
			  <option value="3 chambre">3 Chambre</option>
		</select>

            <label for="inputPassword5" class="form-label">Prix</label>
		    <input type="number"  class="form-control" name="prix" placeholder="montant">
		    
		    <select name="option" class="form-select form-select-lg mt-3 mb-3" aria-label="Large select example">
			  
			  <option value="Mer">Mer</option>
			  <option value="Jardin">Jardin</option>
			  <option value="Piscine">Piscine</option>
		</select>
		    
		    <div class="col-12 mt-3">
              <button class="btn btn-primary" type="submit">Envoyer</button>
          </div>
		    
         </form>
         
         </div>
</body>
</html>