
<%@ page import="magnetboard.Finishedjobs" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'finishedjobs.label', default: 'Finishedjobs')}" />
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
                        	<g:sortableColumn style="text-align:center" property="workorder" title="${message(code: 'finishedjobs.workorder.label', default: 'Workorder')}" />
                        	
                            <g:sortableColumn style="text-align:center" property="companyname" title="${message(code: 'finishedjobs.companyname.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn style="text-align:center" property="datefinished" title="${message(code: 'finishedjobs.datefinished.label', default: 'Date Finished')}" />
                        
                            <g:sortableColumn style="text-align:center" property="jobname" title="${message(code: 'finishedjobs.jobname.label', default: 'Part Number')}" />
                        
                            <g:sortableColumn style="text-align:center" property="totalvalue" title="${message(code: 'finishedjobs.totalvalue.label', default: 'Total Job Value($)')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${finishedjobsInstanceList}" status="i" var="finishedjobsInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td style="text-align:center"><g:link action="show" id="${finishedjobsInstance.id}">${fieldValue(bean: finishedjobsInstance, field: "workorder")}</g:link></td>
                        
                            <td style="text-align:center">${fieldValue(bean: finishedjobsInstance, field: "companyname")}</td>
                        
                            <td style="text-align:center"><g:formatDate date="${finishedjobsInstance.datefinished}" /></td>
                        
                            <td style="text-align:center">${fieldValue(bean: finishedjobsInstance, field: "jobname")}</td>
                        
                            <td style="text-align:center">${fieldValue(bean: finishedjobsInstance, field: "totalvalue")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${finishedjobsInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
