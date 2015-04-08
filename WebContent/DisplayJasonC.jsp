<%@include file="header.jsp"%>
     <div class="container">
       <div class="row">
                
            <div class="box">
                <div class="col-lg-12">
                   <% Json json =(Json)request.getAttribute("json");%>
          <h2><%=json.getTitle() %></h2>
          <textarea id="json"rows="10" cols="130" style="margin: 0px; width: 1103px; height: 509px;"><%out.print(json.getJson()); %></textarea>
          	<input type="button" value="Add To json" id="addTojson"
									class="btn btn-primary  btn-block" onclick="addToJson(<%=json.getId()%>)">
                </div>
           </div>
        </div>
   </div>
    <script type="text/javascript">
    function addToJson(idd){
        
    	var redirect = 'http://localhost:8080/LoginProject/AddToJson.do';
  	redirectPost(redirect, {id:idd});
    }
     function redirectPost(location, args)
    {
        var form = '';
        $.each( args, function( key, value ) {
            form += '<input type="hidden" name="'+key+'" value="'+value+'">';
        });
        $('<form action="' + location + '" method="POST">' + form + '</form>').appendTo($(document.body)).submit();	
    }
     var jsonToadd = $('#json').val();
 	jsonToaddObject = JSON.parse(jsonToadd);
	jsonToadd = JSON.stringify(jsonToaddObject, null, '\t');
	$('#json').text(jsonToadd);
    </script>
    
     <%@include file="footer.jsp"%>  
</body>
</html>