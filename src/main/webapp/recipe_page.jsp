<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="edu.usc.cs.group8.ImHungry.Recipe" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="recipe_page.css" />
    <!-- <link rel="stylesheet" type="text/css" href="print.css" /> -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Recipe Page</title>
  </head>
  <body id="print_preview">
	 <!-- Required Links -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/ssbootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
	
	 <!-- Container Class -->	
	<div class="container">
	    <br/><br>
	    <!-- Button Group for Printable Version, Back to Results, Dropdown for Predefined Lists, and Add to list -->
	    <div class="overall_information">
	    	<div class="btn-group-vertical" id="button_stuff">
	        	<button class="btn btn-success" onclick="PrintPreview()">Printable Version</button> 
	        	<button id="back_to_results_button" class="btn btn-success">Back to Results</button> 
	        	<!-- Back to Results -->
	        	<script type="text/javascript">
				    document.getElementById("back_to_results_button").onclick = function () {
				        location.href = "results_page.jsp";
				    };
				</script>
	        	<button id="btnGroupVerticalDrop2" type="button" class="btn btn-secondary dropdown-toggle btn-success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
			      <div class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop2">
			        <a class="dropdown-item" href="#">Favorites</a>
			        <a class="dropdown-item" href="#">To Explore</a>
			        <a class="dropdown-item" href="#">Do Not Show</a>
			      </div>
			      <script>
				      $(function(){
					    $(".dropdown-item").click(function(){					
					      $("#btnGroupVerticalDrop2").text($(this).text());
					      $("#btnGroupVerticalDrop2").val($(this).text());
					   });
					});
			      </script>
	        	<button class="btn btn-success">Add to list</button> 
	        </div> 
        	<div class="recipe_information" id="all_stuff_on_page">	
		    	<%
		    	//Creating a new recipe object
		    	
		    		ArrayList<String> stuff_ingredients = new ArrayList<String>();
		    		ArrayList<String> stuff_instructions = new ArrayList<String>();
		    		
		    		//DELETE LATER
		    		
		    		stuff_ingredients.add("ingredient 1");
		    		stuff_ingredients.add("ingredient 2");
		    		stuff_ingredients.add("ingredient 3");
		    		
		    		stuff_instructions.add("instruction 1");
		    		stuff_instructions.add("instruction 2");
		    		stuff_instructions.add("instruction 3");
		    		
			        Recipe recipe = new Recipe("Chicken Parmesan", "1 hour, 20 minutes", "2 hours", "img.url", stuff_ingredients, stuff_instructions);
		    		String recipe_name = recipe.getName();
			        String prepTime = recipe.getPrepTime() + " min";
			        String imgURL = recipe.getImgURL();
			        String cookTime = recipe.getCookTime()  + " min";
			        List<String> new_ingredients = new ArrayList<String>();
			        for(int i = 0; i < new_ingredients.size(); i++) {
			        	
			        }
			        List<String> new_instructions = new ArrayList<String>();
			        new_ingredients= recipe.getIngredients();
			        new_instructions = recipe.getInstructions();
			    %>
		    	<div id=recipe_title><%=recipe_name%></div>
		    	<br></br>
		    	<div id=prep_time>Prep Time: <%=prepTime%></div>
		    	<div id=cook_time>Cook Time: <%=cookTime%></div>
		    	<br></br>
		    	<div id=ingredients_unordered>Ingredients: 
		    	
		    	<% for(int i = 0; i < stuff_ingredients.size(); i+=1) { %> 
			            <ul>
			            	<li><%=stuff_ingredients.get(i)%></li>
			            </ul>
			    <% } %>
			    
		    	</div>
		    	<div id=instructions_for_food>Instructions:
		    		<% for(int i = 0; i < stuff_instructions.size(); i+=1) { %> 
			            	<ul><%=i+1 + ". " + stuff_instructions.get(i)%></ul>
			    <% } %>
		    	</div>
		    	
		    	<script>
			    	function PrintPreview() {
			    		var div = document.getElementById('button_stuff');
			    	    div.style.display = 'none';
			        }
		    	</script>
        	</div>
	    </div>
	</div>
  	<!-- End Container Class -->	
	  
	<!-- More Required Links -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>