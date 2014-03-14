
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
        <h1 style="font-size:25px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Job Data Machine List</h1>  
        
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
         
            <jque:newDialog controller='job' action="PEP" ajax="false" id='PEP' title="PEP Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="mean" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Adrian Smith','Brian Emerschak','Ed Norcott','Jake Kurnot','Carlos Harrison','Becky Brunner','Joe Pawlowski','Mark Husarik','Bob Gosliak','Cindy Stemmler','Beth Lang','Cliff Gray','Joel Williams','Melissa Knight','Jesse Ward','Gerry Glatz','Oscar Curtis','Matt Shirey'] }"/>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="dcplating" ajax="false" id='dcplating' title="DC Plating Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="cell" value="" />
    		<jque:dialogField name="areaTop" value="" />
    		<jque:dialogField name="areaBottom" value="" />
    		<jque:dialogField name="spec" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Cliff Gray','Frank Krznaric','Kim Stanley','Jake Kurnot'] }"/>
    		<jque:dialogField name="minCuDeposit" value="" />
    		<jque:dialogField name="maxCuDeposit" value="" />
    		</jque:newDialog>   
    		
    		<jque:newDialog controller='job' action="dcplatingSearch" ajax="false" id='searchDcplating' title="DC Plating Job Search" success="s_div2" width="600">
    		<jque:dialogField name="jobName" value="" />
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="workOrder" ajax="false" id='uniline1' title="PEP Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="mean" value="" />
    		</jque:newDialog>  
    		
    		<jque:newDialog controller='job' action="workOrder" ajax="false" id='4cam' title="PEP Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="mean" value="" />
    		</jque:newDialog>  
    
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
             <div class="list">
               
                    <g:each in="${machineInstanceList}" status="i" var="machineInstance">
                            
                            <g:if test = "${machineInstance.name == 'PEP'}">
                            
                            <div class="job" style = "float:left">
            				<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        					</div>   
        					
                            <div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="PEP" dialogId="PEP" />
               				</div>      
                            </g:if>
                            
                            <g:if test = "${machineInstance.name == 'DC Plating'}">
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="DC Plating" dialogId="dcplating" />
               				</div>  
               				
               				<div class="job" style = "float:right">
               				<jque:newShowDialog buttonCaption="Search Job for DC Plating" dialogId="searchDcplating" /> 
               				</div>
                            </g:if>
                            
                            <g:if test = "${machineInstance.name == 'PTH'}">
                            
                            <div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="Plate Through" dialogId="pth" />
               				</div>    
                            </g:if>
                            
                            <g:if test = "${machineInstance.name == 'Uniline 1'}">
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Uniline 1" dialogId="uniline1" />
               				</div>    
                            </g:if>
                            
                            <g:if test = "${machineInstance.name == '4-Camera Olec'}">
                            <div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="4-Camera Olec" dialogId="4cam" />
               				</div> 
               				
               				
                            </g:if>
                                    
                    </g:each>

            </div>
            
        </div>
    </div>    
    </body>
</html>
