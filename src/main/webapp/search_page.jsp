<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="search_page.css" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Search Page</title>
  </head>
  <body>
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/ssbootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<div class = "div_for_entire_content">
		<div class = "text-center"> 
			I'm Hungry
		</div>
	
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
		
		<div class="container">
	    <br/>
		<div class="row justify-content-center">
           <form class="form-inline" action="IHSearch">
                 <div class="input_group"> 
                 	<input class="form-control form-control-lg form-control-borderless" type="search" placeholder="Enter Food" name="search_query" >
                 	<span></span>
                 	<input class="form-control form-control-borderless" id="ex2" type="number" min="1" value="5" name="num_results" >
                 	<span class="tooltiptext">Number of items to show in results</span>
                 </div>
          </form> 
        </div>
        <br>
        <div class="form-actions"> 
        	<button id="submit_button" class="btn btn-lg btn-success" type="submit">Feed Me!</button> 
        </div>
        
        <!-- <script type="text/javascript">
		    document.getElementById("submit_button").onclick = function () {
		    	sessionStorage.setItem("recipe_title_from_results_page", "Parmesan");
		    	sessionStorage.setItem("prep_time_from_results_page", "1 hour");
		    	sessionStorage.setItem("cook_time_from_results_page", "30 minutes");
		    	sessionStorage.setItem("ingredients_from_results_page", "lots of cheese");
		    	sessionStorage.setItem("instructions_from_results_page", "do x, do y");
		    	
		        location.href = "recipe_page.jsp";
		    };
		</script> -->
  
		</div>
	</div>
	
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
	 <script> 
		//Restricts input for the given textbox 
		 function setInputFilter(textbox, inputFilter) {
		   ["input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop"].forEach(function(event) {
		     textbox.addEventListener(event, function() {
		       if (inputFilter(this.value)) {
		         this.oldValue = this.value;
		         this.oldSelectionStart = this.selectionStart;
		         this.oldSelectionEnd = this.selectionEnd;
		       } else if (this.hasOwnProperty("oldValue")) {
		         this.value = this.oldValue;
		         this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
		       }
		     });
		   });
		 }
		
		// Restrict input to integer>=1
		 setInputFilter(document.getElementById("ex2"), function(value) {
		   return /^\d*$/.test(value) && (value === "" || parseInt(value) >= 1);
		 });
	 </script> 
</html>