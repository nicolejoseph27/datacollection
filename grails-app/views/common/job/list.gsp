
<%@ page import="magnetboard.Job" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'job.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="companyname" title="${message(code: 'job.companyname.label', default: 'Companyname')}" />
                        
                            <g:sortableColumn property="jobname" title="${message(code: 'job.jobname.label', default: 'Jobname')}" />
                        
                            <th><g:message code="job.process.label" default="Process" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jobInstanceList}" status="i" var="jobInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${jobInstance.id}">${fieldValue(bean: jobInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: jobInstance, field: "companyname")}</td>
                        
                            <td>${fieldValue(bean: jobInstance, field: "jobname")}</td>
                        
                            <td>${fieldValue(bean: jobInstance, field: "process")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${jobInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
