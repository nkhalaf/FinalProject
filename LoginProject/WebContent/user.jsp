<%@include file="header.jsp"%>

    <%
ArrayList<Post> posts= (ArrayList)request.getAttribute("allPost");
%>
   <a href="http://localhost:8080/LoginProject/MyProfileServelt.do">MyProfile</a>
        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center" id="dl">
                 <% for(int i=0  ;i<posts.size() ; i++){
                	 out.print("<dl>");
                	 out.print(" <dt>"+posts.get(i).getUserName()+"</dt>");
                	 out.print("<dd>"+posts.get(i).getPost()+"</dd>");
                	 out.print("<hr>");
                 }
                 %>
                </div>
                 <div class="col-lg-12 text-center">
                  <center>
                   <textarea style="width: 416px; height: 104px;"  id="thePost"class="form-control"></textarea>
                   </center>
                   <input type="button" onclick="addPost('<%=request.getSession().getAttribute("Username")%>')" value="post" class="btn btn-primary" style="margin-top: 1% ;width:10%">
                 </div>
            </div>
       </div>
   </div>      
   <script type="text/javascript">
   function addPost( name ){
	   var post = $('#thePost').val();
	   $('#dl').append("<dl>");
	   $('#dl').append("<dt>"+name+"</dt>");
	 $('#dl').append("<dd>"+$('#thePost').val()+"</dd>"); 
	  $('#dl').append("</hr>");
	  
	   $.ajax({
	        url: "http://localhost:8080/LoginProject/AddPostServlet",
	        type: "post",

	        data : { post : post , name:name},
	        success: function(){
	            alert("success");
	          
	        },
	        error:function(){
	            alert("failure");
	            
	        }
	    });
	
	  
   }
   </script>
   <%@include file="footer.jsp"%>
</body>
</html>