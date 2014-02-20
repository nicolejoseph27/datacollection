

<%@ page import="magnetboard.Finishedjobs" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'finishedjobs.label', default: 'Finishedjobs')}" />
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
            <g:hasErrors bean="${finishedjobsInstance}">
            <div class="errors">
                <g:renderErrors bean="${finishedjobsInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${finishedjobsInstance?.id}" />
                <g:hiddenField name="version" value="${finishedjobsInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="companyname"><g:message code="finishedjobs.companyname.label" default="Company Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'companyname', 'errors')}">
                                    <g:textField name="companyname" value="${finishedjobsInstance?.companyname}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="datefinished"><g:message code="finishedjobs.datefinished.label" default="Date Finished" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'datefinished', 'errors')}">
                                    <g:datePicker name="datefinished" precision="day" value="${finishedjobsInstance?.datefinished}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="jobname"><g:message code="finishedjobs.jobname.label" default="Part Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'jobname', 'errors')}">
                                    <g:textField name="jobname" value="${finishedjobsInstance?.jobname}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="noboardsperpanel"><g:message code="finishedjobs.noboardsperpanel.label" default="Number of Boards/Panel" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'noboardsperpanel', 'errors')}">
                                    <g:textField name="noboardsperpanel" value="${finishedjobsInstance?.noboardsperpanel}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="workorder"><g:message code="finishedjobs.workorder.label" default="Workorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'workorder', 'errors')}">
                                    <g:textField name="workorder" value="${finishedjobsInstance?.workorder}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="nooflayers"><g:message code="finishedjobs.nooflayers.label" default="Number of Layers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'nooflayers', 'errors')}">
                                    <g:textField name="nooflayers" value="${finishedjobsInstance?.nooflayers}" />
                                </td>
                            </tr>
                
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="noofpanelsmade"><g:message code="finishedjobs.noofpanelsmade.label" default="Number of Panels Made" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'noofpanelsmade', 'errors')}">
                                    <g:textField name="noofpanelsmade" value="${finishedjobsInstance?.noofpanelsmade}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="finishedjobs.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" value="${finishedjobsInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="projectmanager"><g:message code="finishedjobs.projectmanager.label" default="Project Manager" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'projectmanager', 'errors')}">
                                    <g:textField name="projectmanager" value="${finishedjobsInstance?.projectmanager}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="salescontact"><g:message code="finishedjobs.salescontact.label" default="Sales Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'salescontact', 'errors')}">
                                    <g:textField name="salescontact" value="${finishedjobsInstance?.salescontact}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="shoporder"><g:message code="finishedjobs.shoporder.label" default="Shoporder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'shoporder', 'errors')}">
                                    <g:textField name="shoporder" value="${finishedjobsInstance?.shoporder}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="size"><g:message code="finishedjobs.size.label" default="Panel Size" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'size', 'errors')}">
                                    <g:textField name="size" value="${finishedjobsInstance?.size}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="totalvalue"><g:message code="finishedjobs.totalvalue.label" default="Total Job Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'totalvalue', 'errors')}">
                                    <g:textField name="totalvalue" value="${finishedjobsInstance?.totalvalue}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="valueperboard"><g:message code="finishedjobs.valueperboard.label" default="Value Per Board" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'valueperboard', 'errors')}">
                                    <g:textField name="valueperboard" value="${finishedjobsInstance?.valueperboard}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="noofboardsordered"><g:message code="finishedjobs.noofboardsordered.label" default="Number of Boards Ordered" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: finishedjobsInstance, field: 'noofboardsordered', 'errors')}">
                                    <g:textField name="noofboardsordered" value="${finishedjobsInstance?.noofboardsordered}" />
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
