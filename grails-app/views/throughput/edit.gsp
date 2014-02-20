

<%@ page import="magnetboard.Throughput" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'throughput.label', default: 'Throughput')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${throughputInstance}">
            <div class="errors">
                <g:renderErrors bean="${throughputInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${throughputInstance?.id}" />
                <g:hiddenField name="version" value="${throughputInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="companyname"><g:message code="throughput.companyname.label" default="Company Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: throughputInstance, field: 'companyname', 'errors')}">
                                    <g:textField name="companyname" value="${throughputInstance?.companyname}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="datefinished"><g:message code="throughput.datefinished.label" default="Date Finished" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: throughputInstance, field: 'datefinished', 'errors')}">
                                    <g:datePicker name="datefinished" precision="day" value="${throughputInstance?.datefinished}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="jobname"><g:message code="throughput.jobname.label" default="Part Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: throughputInstance, field: 'jobname', 'errors')}">
                                    <g:textField name="jobname" value="${throughputInstance?.jobname}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="process"><g:message code="throughput.process.label" default="Process" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: throughputInstance, field: 'process', 'errors')}">
                                    <g:textField name="process" value="${throughputInstance?.process}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="totalvalue"><g:message code="throughput.totalvalue.label" default="Total Job Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: throughputInstance, field: 'totalvalue', 'errors')}">
                                    <g:textField name="totalvalue" value="${throughputInstance?.totalvalue}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="workorder"><g:message code="throughput.workorder.label" default="Workorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: throughputInstance, field: 'workorder', 'errors')}">
                                    <g:textField name="workorder" value="${throughputInstance?.workorder}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
