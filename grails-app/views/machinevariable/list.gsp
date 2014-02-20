
<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machineVariable.label', default: 'MachineVariable')}" />
        <h1 style="font-size:52px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Compunetics</h1> 
        <h2 style="font-style:italic;font-size:20px;text-align:center">excellence, measured in microns.</h2>
        
        
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
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'machineVariable.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="variable" title="${message(code: 'machineVariable.variable.label', default: 'Variable')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${machineVariableInstanceList}" status="i" var="machineVariableInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${machineVariableInstance.id}">${fieldValue(bean: machineVariableInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "variable")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${machineVariableInstanceTotal}" />
            </div>
        </div>
    </div>    
    </body>
</html>
