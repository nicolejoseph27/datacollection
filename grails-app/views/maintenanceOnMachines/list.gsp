
<%@ page import="magnetboard.MaintenanceOnMachines" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'maintenanceOnMachines.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="laborHours" title="${message(code: 'maintenanceOnMachines.laborHours.label', default: 'Labor Hours')}" />
                        
                            <g:sortableColumn property="costOfParts" title="${message(code: 'maintenanceOnMachines.costOfParts.label', default: 'Cost Of Parts')}" />
                        
                            <g:sortableColumn property="notes" title="${message(code: 'maintenanceOnMachines.notes.label', default: 'Notes')}" />
                        
                            <th><g:message code="maintenanceOnMachines.machine.label" default="Machine" /></th>
                        
                            <g:sortableColumn property="mainDate" title="${message(code: 'maintenanceOnMachines.mainDate.label', default: 'Main Date')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${maintenanceOnMachinesInstanceList}" status="i" var="maintenanceOnMachinesInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${maintenanceOnMachinesInstance.id}">${fieldValue(bean: maintenanceOnMachinesInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: maintenanceOnMachinesInstance, field: "laborHours")}</td>
                        
                            <td>${fieldValue(bean: maintenanceOnMachinesInstance, field: "costOfParts")}</td>
                        
                            <td>${fieldValue(bean: maintenanceOnMachinesInstance, field: "notes")}</td>
                        
                            <td>${fieldValue(bean: maintenanceOnMachinesInstance, field: "machine")}</td>
                        
                            <td><g:formatDate date="${maintenanceOnMachinesInstance.mainDate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${maintenanceOnMachinesInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
