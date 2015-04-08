<%@include file="header.jsp"%>
	<div class="container">

		<div class="row">
			<div class="box">
				<div class="col-lg-12 text-center">
					<table>
						<tr>
							<input type="button" value="addText" id="addT"
								class="btn btn-primary" onclick="addT()" />
							<input type="button" value="addButton" id="addB"
								class="btn btn-primary" onclick="addB()" />
							<input type="button" value="addSelect" id="addS"
								class="btn btn-primary" onclick="addS()" />
									<input type="button" value="add Radio Buttton" id="addR"
								   class="btn btn-primary" onclick="addR()" />		
								<input type="hidden" id="RowID" value="<%=request.getParameter("id")%>" />
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="box">
				<div class="col-lg-6 text-center" id="addC" ></div>
				<div class="col-lg-6text-center">
				<form action=""method="post" class="form-horizontal" role="form">
				<textarea style="height: 606px;width: 554px;" id="textA"></textarea>
				 <input type="button" value="save" id="save"class="btn btn-primary  btn-block" style="width:50%;float: right;" onclick="saveN()" >
				 </form>
				</div>
			</div>
		</div>
	</div>

	<script type="application/x-javascript">
		
function addT(){
	$('#addC').empty();
	$('#addC').append("<from  action=\"/AddtoJson\" method=\"get\" id=\"formId_text\" >");
	$('#addC').append("</form>");
	$('#formId_text').append(" the tag type is");
	$('#formId_text').append("<input type='text' name='type'  id='type' class=\"form-control\" value=\"text\"\" />  <br />");
	
	$('#formId_text').append(" the input text  name is ");
	$('#formId_text').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#formId_text').append(" the tag input text id is");
	$('#formId_text').append("<input type='text' name='id'   id='id' class=\"form-control\"  />   <br />");
	$('#formId_text').append("<input type='button'  class='btn btn-primary' value='add to json'  onclick=\"doSubmit()\"/>  ");
	
}
function addP(){
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\"  id=\"formId_Password\" >");
	$('#addC').append("</form>");
	$('#formId_Password').append(" the input  value is ");
	$('#formId_Password').append("<input type='text' name='value' id='value'class=\"form-control\" />  <br />" );
	$('#formId_Password').append(" the tag type is");
	$('#formId_Password').append("<input type='text' name='type'  id='type'class=\"form-control\" value =\"password\"/>  <br />");
	
	$('#formId_Password').append(" the input password name is ");
	$('#formId_Password').append("<input type='text' name='name'  id='name'class=\"form-control\" />  <br />" );
	$('#formId_Password').append(" the tag  password id is");
	$('#formId_Password').append("<input type='text' name='id'  id='id'class=\"form-control\"  />   <br />");
	$('#formId_Password').append("<input type='button'  class='btn btn-primary' value='add to json'   onclick=\"doSubmit() />  ");
	
	
}
function addB(){
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\" action=\"http://localhost:8080/LoginProject/AddtoJson\" method=\"get\"  id =\"formId_buttons\">");
	$('#formId_buttons').append(" the button value is ");
	$('#formId_buttons').append("<input type='text' name='value'  id='value' class=\"form-control\"  />  <br />" );
	$('#formId_buttons').append(" the tag type is");
	$('#formId_buttons').append("<input type='text' name='type'  id= 'type' class=\"form-control\"  value=\"button\"/>  <br />");
	$('#formId_buttons').append(" the input   button name is ");
	$('#formId_buttons').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#formId_buttons').append(" the tag button id is");
	$('#formId_buttons').append("<input type='text' name='id'   id='id' class=\"form-control\"  />   <br />");
	$('#formId_buttons').append("<input type='button'  class='btn btn-primary' value='add to json'  onclick=\"doSubmit()\"/>  ");
}

function addR(){
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\" action=\"http://localhost:8080/LoginProject/AddtoJson\" method=\"get\"  id =\"formId_buttons\">");
	$('#formId_buttons').append(" the Radio button value is ");
	$('#formId_buttons').append("<input type='text' name='value'  id='value' class=\"form-control\"  />  <br />" );
	$('#formId_buttons').append(" the tag type is");
	$('#formId_buttons').append("<input type='text' name='type'  id= 'type' class=\"form-control\"  value=\"radio\"/>  <br />");
	$('#formId_buttons').append(" the input  radio  button name is ");
	$('#formId_buttons').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#formId_buttons').append(" the tag button id is");
	$('#formId_buttons').append("<input type='text' name='id'   id='id' class=\"form-control\"  />   <br />");
	$('#formId_buttons').append("<input type='button'  class='btn btn-primary' value='add to json'  onclick=\"ADDR()\"/>  ");

}
function addC(){
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\" action=\"http://localhost:8080/LoginProject/AddtoJson\" method=\"get\"  id =\"formId_buttons\">");
	$('#formId_buttons').append(" the chickBOX value is ");
	$('#formId_buttons').append("<input type='text' name='value'  id='value' class=\"form-control\"  />  <br />" );
	$('#formId_buttons').append(" the tag type is");
	$('#formId_buttons').append("<input type='text' name='type'  id= 'type' class=\"form-control\"  value=\"chickbox\"/>  <br />");
	$('#formId_buttons').append(" the input  chickBOX name is ");
	$('#formId_buttons').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#formId_buttons').append(" the tag chickBOX id is");
	$('#formId_buttons').append("<input type='text' name='id'   id='id' class=\"form-control\"  />   <br />");
	$('#formId_buttons').append("<input type='button'  class='btn btn-primary' value='add to json'  onclick=\"ADDC()\"/>  ");

}
function ADDC(){
	
	  var Rowid = $('#RowID').val();
	    var  name =$('#name').val();
	    var value = $('#value').val();
	    var id =$('#id').val();
	    var tag_type=$('#type').val();
	    var json = "";
	    json +="{\"tag\": \"input\",\""+tag_type+"\": \"text\",\"tagId\": \""+id+"\",\"tagName\": \""+name+"\",\"value\": \""+value+"\"}";
		 var jsonToaddObject = JSON.parse(json);
			json = JSON.stringify(jsonToaddObject, null, '\t'); 
			$('#textA').text(json);
	
	
}
function addS(){
	
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\" action=\"http://localhost:8080/LoginProject/AddtoJson\" method=\"get\"  id=\"fromId_select\">");
	$('#addC').append("</form>");
	$('#fromId_select').append(" the tag type is");
	$('#fromId_select').append("<input type='text' name='type'  id =\"type\" class=\"form-control\" value =\"Select\"/>  <br />");
	$('#fromId_select').append(" the input   Select name is ");
	$('#fromId_select').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#fromId_select').append(" the tag Select id is");
	$('#fromId_select').append("<input type='text' name='id' id='id' class=\"form-control\"  />   <br />");
	$('#fromId_select').append(" number of options ");
	$('#fromId_select').append("<input type='text'  id=\"number_of_options\"  name='number_of_Options' class=\"form-control\" onkeydown=\"checkInput()\"  />   <br />");
    $('#fromId_select').append("<div id='options'> </div>");
	$('#fromId_select').append("<input type='submit'  class='btn btn-primary' value='add to json' onclick=\"Approve()\"/>  ");
}
function checkInput(){
var number_of_options  = $('#number_of_options').val();
var  i = 0; 
$('#options').empty();
for( i=0 ; i<number_of_options ; i++){
	$('#options').append(" the tag type is");
	$('#options').append("<input type='text' name='type"+i+"' id='type"+i+"' class=\"form-control\" value =\"option\"  />  <br />"); 
	$('#options').append(" the option value is ");
	$('#options').append("<input type='text' name='value"+i+"' id='value"+i+"'  class=\"form-control\" />  <br />" );
	$('#options').append(" the option id is");
	$('#options').append("<input type='text' name='id"+i+"' id='id"+i+"' class=\"form-control\"  />   <br />");
	$('#options').append(" the option htmlValue is");
	$('#options').append("<input type='text' name='HtmlValue"+i+"'  id='HtmlValue"+i+"'  class=\"form-control\"  />   <br />");
	$('#options').append("<hr />");
}
}
function doSubmit(){
	alert("here");
    var Rowid = $('#RowID').val();
    var  name =$('#name').val();
    var id =$('#id').val();
    var tag_type=$('#type').val();
    var json = "";
	 json +="{\"tag\": \"input\",\""+tag_type+"\": \"text\",\"placeholder\":\"\",\"tagId\": \""+id+"\",\"tagName\": \""+name+"\",\"value\": \"\"}";
	 console.log(json);
	 var jsonToaddObject = JSON.parse(json);
	json = JSON.stringify(jsonToaddObject, null, '\t'); 
	$('#textA').text(json);
}

function ADDR(){
	  var Rowid = $('#RowID').val();
	    var  name =$('#name').val();
	    var value = $('#value').val();
	    var id =$('#id').val();
	    var tag_type=$('#type').val();
	    var json = "";
	    json +="{\"tag\": \"input\",\""+tag_type+"\": \"text\",\"tagId\": \""+id+"\",\"tagName\": \""+name+"\",\"value\": \""+value+"\"}";
		 var jsonToaddObject = JSON.parse(json);
			json = JSON.stringify(jsonToaddObject, null, '\t'); 
			$('#textA').text(json);
	
}
function saveN(){

	 var Rowid = $('#RowID').val();
	 var json = $('#textA').val();
	 alert(Rowid);
	 alert(json);
	$.ajax({
	    url : "http://localhost:8080/LoginProject/AddtoJson",
	    type: "POST",
	    data:{

	    	jsonToadd:json,
	    	RowID:Rowid
	    },
	    success: function(data, textStatus, jqXHR)
	    {
	        alert("success");
	    },
	    error: function (jqXHR, textStatus, errorThrown)
	    {
	    	   alert("error");
	    }
	});
	

	
}
function Approve(){
	 var Rowid = $('#RowID').val();
		var Ttype = $('#type').val();
		var Tname = $('#name').val();
		var Tid = $('#id').val();
		var options = new Array();
		var i=0;

		for(i=0 ;i<$('#number_of_options').val(); i++){
			
			options["type"+i+""]=$("#type"+i+"").val();
			options["value"+i+""]=$("#value"+i+"").val();
			options["id"+i+""]=$("#id"+i+"").val();
			options["HtmlValue"+i+""]=$("#HtmlValue"+i+"").val();
		}
		var optJson = "";
		var jsonToadd = "{\"tag\": \"select\",\"tagName\": \"Sex\",\"select\": {\"selectID\": \"slectID\",\"options\": [";
		for(i=0 ; i<$('#number_of_options').val() ;i++){
			optJson += "{\"optionValue\": \""+options["value"+i+""]+"\",";
			optJson +="\"optionHtml\": \""+options["HtmlValue"+i+""]+"\",";
			if(i!=$('#number_of_options').val()-1)
			optJson += "\"optionID\": \""+options["id"+i+""]+"\"},";
			else{
				optJson += "\"optionID\": \""+options["id"+i+""]+"\"}";
			}
		
	}
		jsonToadd += optJson;
		jsonToadd += "]}}";
	
		jsonToaddObject = JSON.parse(jsonToadd);
		jsonToadd = JSON.stringify(jsonToaddObject, null, '\t');
	$('#textA').text(jsonToadd);
}
 
 
	</script>
</body>
</html>