<!--  Start Dialog  example -->	       
<div> 
This is my NEW Dialog:
<button id="myDialog_launch">Show Dialog</button> 
 
	  <script type="text/javascript"> 
		var myDialog_message_o;
$(function() {
var myDialog_message = $( "#myDialog_message" );
myDialog_message_o=myDialog_message.val();
var allFields = $( [] ).add( myDialog_message );  $( "#myDialog" ).dialog({autoOpen: false,width: 400,modal: true,modal: true,
			buttons: {
				"Submit": function() {
										var bValid = true;
					allFields.removeClass( "ui-state-error" );
 
					if ( bValid ) {
			pulsateTips('Connecting to Server...',30);;jQuery.ajax({type:'POST',data:jQuery.param(allFields), url:'/jquery-ui-extensions/test/testCall',success:function(data,textStatus){jQuery('#s_div').html(data);$("#myDialog" ).dialog( "close" );;},error:function(XMLHttpRequest,textStatus,errorThrown){jQuery('#myDialog_failure').html(XMLHttpRequest.responseText);pulsateTips($(myDialog_failure).html(),5);showErrors('myDialog');}});
										}
								},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val( "" ).removeClass( "ui-state-error" );
			}
		});
 
				  $( "#myDialog_launch" )
						  .click(function() {
								  initTips('');
						$( "#myDialog_message" ).val(myDialog_message_o);
			$( "#myDialog" ).dialog( "open" );
			return false;
			});
			});
 
	</script> 
			<div id="myDialog_failure" style="display:none"></div> 
			<div id="myDialog" title="Test Dialog" style="display:none;" > 
				<p class="validateTips"></p> 
				<form action="/jquery-ui-extensions/test/testCall" method="post" name="myDialog_form" id="myDialog_form" > 
	<table width="100%" class="ui-dialog-content"><tbody> 
			<tr> 
			<td width="40%"><label class="ui-dialog-content" for="myDialog_message">Message:</label></td> 
			<td> 
<input type="text" name="message" id="myDialog_message" value="Hello World" class="text ui-widget-content ui-corner-all" /> 
		</td></tr> 
			</tbody></table> 
			   </form> 
			</div> 
		
 
<div id="s_div" style="border:1px solid blue;"> 
HTML borders are best created with CSS.
</div> 
 
</div>
<!--  End  -->

