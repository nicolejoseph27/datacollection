
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
        <div class="body" style="width:85%">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn style="text-align:center" property="workorder" title="${message(code: 'job.id.label', default: 'Workorder')}" />
                        
                            <g:sortableColumn style="text-align:center" property="companyname" title="${message(code: 'job.companyname.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn  style="text-align:center" property="jobname" title="${message(code: 'job.jobname.label', default: 'Part Number')}" />
                            
                            <g:sortableColumn  style="text-align:center" property="duedate" title="${message(code: 'job.duedate.label', default: 'Due Date')}" />
                            
                            <th style="text-align:center"><g:message code="job.process.label" default="Process" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jobInstanceList}" status="i" var="jobInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td style="text-align:center"><g:link action="show" id="${jobInstance.id}">${fieldValue(bean: jobInstance, field: "workorder")}</g:link></td>
                        
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "companyname")}</td>
                        
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "jobname")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "duedate")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "process")}</td>
                        
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
