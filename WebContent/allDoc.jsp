<%@include file="header.jsp"%>
<%ArrayList<Json> jsons =(ArrayList)request.getAttribute("json");%>
     <div class="container">

            <div class="row">
                
            <div class="box">
                <div class="col-lg-12">
                    <table  class="table table-hover" border="1">
                         <TR onClick="ff()">
                             <th>JsonId</th >
                             <th>JsonTitle</th>
                         </TR>
                         <%
                         for(int i=0 ; i<jsons.size();i++){
                        	out.print("<tr onClick=\"ff('"+jsons.get(i).getId()+"')\">");
                        	out.print("<td> "+jsons.get(i).getId()+"</td>");
                        	out.print("<td> "+jsons.get(i).getTitle().trim()+"</td>");
                        	out.print("</tr>");
                         }
                         %>
                         <tr onClick="newJ()">
                         <td colspan="2" align="center" id="newR">NEW</td>
                         </tr>
                    </table>
                </div>
            </div>
        </div>
     </div>
     <script type="text/javascript">
  
    	    function ff(idd){
    	     
    	    	var redirect = 'http://localhost:8080/LoginProject/getJsonbyId.do';
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
    	     
    	     function newJ(){
        	     
     	    	var redirect = 'newJson.do';
     	  	redirectPost(redirect, {});
     	    }
     	     function redirectPost(location, args)
     	    {
     	        var form = '';
     	        $.each( args, function( key, value ) {
     	            form += '<input type="hidden" name="'+key+'" value="'+value+'">';
     	        });
     	        $('<form action="' + location + '" method="POST">' + form + '</form>').appendTo($(document.body)).submit();
     	    }

     </script>
</body>
</html>