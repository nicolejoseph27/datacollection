<%@ page import="magnetboard.Process" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'process.label', default: 'Process')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body" style="width:85%">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn style="text-align:center" property="canister" title="${message(code: 'process.id.label', default: 'Canister')}" />
                        
                            <g:sortableColumn style="text-align:center" property="priority" title="${message(code: 'process.priority.label', default: 'Priority')}" />
                        
                                               
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${processInstanceList}" status="i" var="processInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td style="text-align:center"><g:link action="priorityshow" id="${processInstance.id}">${fieldValue(bean: processInstance, field: "canister")}</g:link></td>
                        
                            <td style="text-align:center">${fieldValue(bean: processInstance, field: "priority")}</td>
                        
                                                   
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${processInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
