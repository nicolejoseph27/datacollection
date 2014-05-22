

<%@ page import="magnetboard.MaintenanceOnMachines" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${maintenanceOnMachinesInstance}">
            <div class="errors">
                <g:renderErrors bean="${maintenanceOnMachinesInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="laborHours"><g:message code="maintenanceOnMachines.laborHours.label" default="Labor Hours" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: maintenanceOnMachinesInstance, field: 'laborHours', 'errors')}">
                                    <g:textField name="laborHours" value="${maintenanceOnMachinesInstance?.laborHours}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="costOfParts"><g:message code="maintenanceOnMachines.costOfParts.label" default="Cost Of Parts" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: maintenanceOnMachinesInstance, field: 'costOfParts', 'errors')}">
                                    <g:textField name="costOfParts" value="${maintenanceOnMachinesInstance?.costOfParts}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="maintenanceOnMachines.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: maintenanceOnMachinesInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" value="${maintenanceOnMachinesInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="machine"><g:message code="maintenanceOnMachines.machine.label" default="Machine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: maintenanceOnMachinesInstance, field: 'machine', 'errors')}">
                                    <g:select name="machine.id" from="${magnetboard.Machine.list()}" optionKey="id" value="${maintenanceOnMachinesInstance?.machine?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mainDate"><g:message code="maintenanceOnMachines.mainDate.label" default="Main Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: maintenanceOnMachinesInstance, field: 'mainDate', 'errors')}">
                                    <g:datePicker name="mainDate" precision="day" value="${maintenanceOnMachinesInstance?.mainDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mainOperator"><g:message code="maintenanceOnMachines.mainOperator.label" default="Main Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: maintenanceOnMachinesInstance, field: 'mainOperator', 'errors')}">
                                    <g:select name="mainOperator" from="${['Jim Monda','Greg Krasicki','Joe Pawlowksi','Kim Stanley','Matt Dudik','Ken Gulick','Jake Kurnot','Other']}" value="${maintenanceOnMachinesInstance?.mainOperator}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
