
<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machineVariable.label', default: 'MachineVariable')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'machineVariable.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="airQuality_date" title="${message(code: 'machineVariable.airQuality_date.label', default: 'Air Qualitydate')}" />
                        
                            <g:sortableColumn property="airQuality_operator" title="${message(code: 'machineVariable.airQuality_operator.label', default: 'Air Qualityoperator')}" />
                        
                            <g:sortableColumn property="airQuality_spray" title="${message(code: 'machineVariable.airQuality_spray.label', default: 'Air Qualityspray')}" />
                        
                            <g:sortableColumn property="airQuality_spray5" title="${message(code: 'machineVariable.airQuality_spray5.label', default: 'Air Qualityspray5')}" />
                        
                            <g:sortableColumn property="airQuality_sprayTemp" title="${message(code: 'machineVariable.airQuality_sprayTemp.label', default: 'Air Qualityspray Temp')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${machineVariableInstanceList}" status="i" var="machineVariableInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${machineVariableInstance.id}">${fieldValue(bean: machineVariableInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${machineVariableInstance.airQuality_date}" /></td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_operator")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_spray")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_spray5")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayTemp")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${machineVariableInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
