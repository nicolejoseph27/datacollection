
<%@ page import="magnetboard.Throughput" %>
<html>
    <head>
    	<r:require module="export"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'throughput.label', default: 'Throughput')}" />
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
                 
                        	<g:sortableColumn style="text-align:center" property="workorder" title="${message(code: 'throughput.workorder.label', default: 'Workorder')}" />
                        
                            <g:sortableColumn style="text-align:center" property="companyname" title="${message(code: 'throughput.companyname.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn style="text-align:center" property="datefinished" title="${message(code: 'throughput.datefinished.label', default: 'Date Finished')}" />
                        
                            <g:sortableColumn style="text-align:center" property="jobname" title="${message(code: 'throughput.jobname.label', default: 'Part Number')}" />
                        
                            <g:sortableColumn style="text-align:center" property="process" title="${message(code: 'throughput.process.label', default: 'Process')}" />
                        
                            <g:sortableColumn style="text-align:center" property="totalvalue" title="${message(code: 'throughput.totalvalue.label', default: 'Total Job Value($)')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${throughputInstanceList}" status="i" var="throughputInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td style="text-align:center"><g:link action="show" id="${throughputInstance.id}">${fieldValue(bean: throughputInstance, field: "workorder")}</g:link></td>
                            
                            <td style="text-align:center">${fieldValue(bean: throughputInstance, field: "companyname")}</td>
                        
                            <td style="text-align:center"><g:formatDate date="${throughputInstance.datefinished}" /></td>
                        
                            <td style="text-align:center">${fieldValue(bean: throughputInstance, field: "jobname")}</td>
                        
                            <td style="text-align:center">${fieldValue(bean: throughputInstance, field: "process")}</td>
                        
                            <td style="text-align:center">${fieldValue(bean: throughputInstance, field: "totalvalue")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            
			<div class="paginateButtons">
    		<g:paginate total="${Throughput.count()}" />
			</div>
            <export:formats />
        </div>
    </body>
</html>
