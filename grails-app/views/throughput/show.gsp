
<%@ page import="magnetboard.Throughput" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'throughput.label', default: 'Throughput')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="throughput.workorder.label" default="Workorder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: throughputInstance, field: "workorder")}</td>
                            
                            <td valign="top" class="name"><g:message code="throughput.companyname.label" default="Company Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: throughputInstance, field: "companyname")}</td>
                            
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name"><g:message code="throughput.datefinished.label" default="Date Finished" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${throughputInstance?.datefinished}" /></td>
                            
                            <td valign="top" class="name"><g:message code="throughput.jobname.label" default="Part Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: throughputInstance, field: "jobname")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="throughput.process.label" default="Process" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: throughputInstance, field: "process")}</td>
                            
                            <td valign="top" class="name"><g:message code="throughput.totalvalue.label" default="Total Job Value" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: throughputInstance, field: "totalvalue")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${throughputInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
