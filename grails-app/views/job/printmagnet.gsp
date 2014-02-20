<%@ page import="magnetboard.Job" %>

<html>
    <head>
        <meta name="layout" content="main" />

        
        <style type="text/css" media="print">
       
      	
        #pageBody {
        	width:200px;
        	height:60px;
        	position:absolute;
        	color:black;
        	font-size:7px;
        	padding-top:3px;
        	padding-bottom:5px;
        	border:2px solid black;
        	
        }
        
        </style>
    </head>
    <body>
    
    <g:if test = "${jobInstance.priority == 'Normal Turn Multi-Layer'}">
    <div id="pageBody" style="background-color:#FFB84D;color:black">
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "companyname")}</p>
       <p style="float:right; margin-right:3px">${fieldValue(bean: jobInstance, field: "duedate")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "shoporder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "jobname")}</p>
       <p style="float:right; margin-right:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "workorder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "noofpanelsmade")}/${fieldValue(bean: jobInstance, field: "noofboardsordered")}</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "totalvalue")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "salescontact")}/${fieldValue(bean: jobInstance, field: "projectmanager")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px; font-size:5px">${fieldValue(bean: jobInstance, field: "notes")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "nooflayers")} Layers</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "valueperboard")}  ea.</p>
       <p style="margin-left: 80px">${fieldValue(bean: jobInstance, field: "thickness")}   ${fieldValue(bean: jobInstance, field: "size")}   ${fieldValue(bean: jobInstance, field: "noboardsperpanel")} up</p>
    </div>
    </g:if>
    
    <g:if test = "${jobInstance.priority == 'Fast Turn Multi-Layer'}">
       <div id="pageBody" style="background-color:red;color:white">
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "companyname")}</p>
       <p style="float:right; margin-right:3px">${fieldValue(bean: jobInstance, field: "duedate")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "shoporder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "jobname")}</p>
       <p style="float:right; margin-right:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "workorder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "noofpanelsmade")}/${fieldValue(bean: jobInstance, field: "noofboardsordered")}</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "totalvalue")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "salescontact")}/${fieldValue(bean: jobInstance, field: "projectmanager")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px; font-size:5px">${fieldValue(bean: jobInstance, field: "notes")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "nooflayers")} Layers</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "valueperboard")}  ea.</p>
       <p style="margin-left: 80px">${fieldValue(bean: jobInstance, field: "thickness")}   ${fieldValue(bean: jobInstance, field: "size")}   ${fieldValue(bean: jobInstance, field: "noboardsperpanel")} up</p>
    	</div>
    </g:if>
    
    <g:if test = "${jobInstance.priority == 'Rework'}">
    <div id="pageBody" style="background-color:#00CC33;color:white">
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "companyname")}</p>
       <p style="float:right; margin-right:3px">${fieldValue(bean: jobInstance, field: "duedate")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "shoporder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "jobname")}</p>
       <p style="float:right; margin-right:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "workorder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "noofpanelsmade")}/${fieldValue(bean: jobInstance, field: "noofboardsordered")}</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "totalvalue")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "salescontact")}/${fieldValue(bean: jobInstance, field: "projectmanager")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px; font-size:5px">${fieldValue(bean: jobInstance, field: "notes")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "nooflayers")} Layers</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "valueperboard")}  ea.</p>
       <p style="margin-left: 80px">${fieldValue(bean: jobInstance, field: "thickness")}   ${fieldValue(bean: jobInstance, field: "size")}   ${fieldValue(bean: jobInstance, field: "noboardsperpanel")} up</p>
    </div>
    </g:if>
    
    <g:if test = "${jobInstance.priority == 'Normal Turn Double Sided'}">
    <div id="pageBody" style="background-color:white">
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "companyname")}</p>
       <p style="float:right; margin-right:3px">${fieldValue(bean: jobInstance, field: "duedate")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "shoporder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "jobname")}</p>
       <p style="float:right; margin-right:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "workorder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "noofpanelsmade")}/${fieldValue(bean: jobInstance, field: "noofboardsordered")}</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "totalvalue")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "salescontact")}/${fieldValue(bean: jobInstance, field: "projectmanager")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px; font-size:5px">${fieldValue(bean: jobInstance, field: "notes")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "nooflayers")} Layers</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "valueperboard")}  ea.</p>
       <p style="margin-left: 80px">${fieldValue(bean: jobInstance, field: "thickness")}   ${fieldValue(bean: jobInstance, field: "size")}   ${fieldValue(bean: jobInstance, field: "noboardsperpanel")} up</p>
    </div>
    </g:if>
    
    <g:if test = "${jobInstance.priority == 'Fast Turn Double Sided'}">
    <div id="pageBody" style="background-color:yellow">
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "companyname")}</p>
       <p style="float:right; margin-right:3px">${fieldValue(bean: jobInstance, field: "duedate")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "shoporder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "jobname")}</p>
       <p style="float:right; margin-right:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "workorder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "noofpanelsmade")}/${fieldValue(bean: jobInstance, field: "noofboardsordered")}</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "totalvalue")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "salescontact")}/${fieldValue(bean: jobInstance, field: "projectmanager")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px; font-size:5px">${fieldValue(bean: jobInstance, field: "notes")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "nooflayers")} Layers</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "valueperboard")}  ea.</p>
       <p style="margin-left: 80px">${fieldValue(bean: jobInstance, field: "thickness")}   ${fieldValue(bean: jobInstance, field: "size")}   ${fieldValue(bean: jobInstance, field: "noboardsperpanel")} up</p>
    </div>
    </g:if>
    
    <g:if test = "${jobInstance.priority == 'Assembly'}">
    <div id="pageBody" style="background-color:blue;color:white">
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "companyname")}</p>
       <p style="float:right; margin-right:3px">${fieldValue(bean: jobInstance, field: "duedate")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "shoporder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "jobname")}</p>
       <p style="float:right; margin-right:3px;font-size:12px;font-weight:bold">${fieldValue(bean: jobInstance, field: "workorder")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "noofpanelsmade")}/${fieldValue(bean: jobInstance, field: "noofboardsordered")}</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "totalvalue")}</p>
       <p style="margin-left:80px">${fieldValue(bean: jobInstance, field: "salescontact")}/${fieldValue(bean: jobInstance, field: "projectmanager")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px; font-size:5px">${fieldValue(bean: jobInstance, field: "notes")}</p>
       <div style="margin: 0px; padding:0px; clear: both; height: 3px"></div>
       <p style="float:left; margin-left:3px">${fieldValue(bean: jobInstance, field: "nooflayers")} Layers</p>
       <p style="float:right; margin-right:3px">$${fieldValue(bean: jobInstance, field: "valueperboard")}  ea.</p>
       <p style="margin-left: 80px">${fieldValue(bean: jobInstance, field: "thickness")}   ${fieldValue(bean: jobInstance, field: "size")}   ${fieldValue(bean: jobInstance, field: "noboardsperpanel")} up</p>
    </div>
    </g:if>
    
    </body>
</html>
