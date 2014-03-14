<%@ page import="magnetboard.Machine" %>
<html>
    <head>
    
   <g:javascript plugin="jquery" library="jquery" />
   <g:javascript library="application" />
   <jqui:resources />
   <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machine.label', default: 'Machine')}" />
        <h1 style="font-size:25px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Maintenance Machine List</h1>  
        
        <style type="text/css" media="screen">
	
		body{
		    background-image: url(images/pcb3.aspx);
		 	background-repeat:repeat-y;
		 	}
	
        #pageBody {
        	margin-top:70px;
            margin-left:17%;
            margin-right:17%;
        }
        
       
		div.job {
			width:30%;
			padding:10px;
			border-color:#DBDBDB;
			border-width:6px;	
            border-style:inset;
			margin:0px;
			text-align:center;
			border-radius:13px;
			background-color:#F7F7F7;
		}
		
        </style>
               
    </head>
    <body>
    
    <div id="pageBody">
   
        <div class="body">
         
            <jque:newDialog controller='machineVariable' action="airQuality" ajax="false" id='airquality' title="Air Quality" success="s_div2" width="600">
 			<jque:dialogTab caption="Spray">
    		<jque:dialogField name="operator" value="Joe Pawlowski" />
    		<jque:dialogField name="spray" value="" />
    		<jque:dialogField name="spray5" value="" />
    		<jque:dialogField name="sprayTemperature" value="" />
    		<jque:dialogField name="sprayHumidity" value="" />
    		<jque:dialogField name="sprayPressure" value="" />
    		<jque:dialogField name="sprayAfterAirHandler" value="" />
    		<jque:dialogField name="sprayAfterAirHandler5" value="" />
    		<jque:dialogField name="hall" value="" />
    		<jque:dialogField name="hall5" value="" />
    		</jque:dialogTab>
    		<jque:dialogTab caption="Films">
    		<jque:dialogField name="Films" value="" />
    		<jque:dialogField name="Films5" value="" />
    		<jque:dialogField name="FilmsTemperature" value="" />
    		<jque:dialogField name="FilmsHumidity" value="" />
    		<jque:dialogField name="FilmsPressure" value="" />
    		</jque:dialogTab>
    		<jque:dialogTab caption="Goldroom">
    		<jque:dialogField name="twoCamera" value="" />
    		<jque:dialogField name="twoCamera5" value="" />
    		<jque:dialogField name="twoCameraTemperature" value="" />
    		<jque:dialogField name="twoCameraHumidity" value="" />
    		<jque:dialogField name="twoCameraPressure" value="" />
    		<jque:dialogField name="fourCamera" value="" />
    		<jque:dialogField name="fourCamera5" value="" />
    		<jque:dialogField name="fourCameraTemperature" value="" />
    		<jque:dialogField name="fourCameraHumidity" value="" />
    		<jque:dialogField name="fourCameraPressure" value="" />
    		</jque:dialogTab>
    		</jque:newDialog> 
    
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
             <div class="list">
               
                    <g:each in="${machineInstanceList}" status="i" var="machineInstance">
                            
                            <g:if test = "${machineInstance.name == 'Air Quality'}">
                            
                            <div class="job" style = "float:left">
            				<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        					</div>   
        					<div class="job" style = "float:right"> 
                   	 		<g:link controller="machineVariable" action="list" style="color:#228B22;text-transform:capitalize">List Maintenance Events</g:link>
               				</div>
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Air Quality" dialogId="airquality" />
               				</div>      
                            </g:if>
                                       
                    </g:each>

            </div>
            
        </div>
    </div>    
    </body>
</html>
