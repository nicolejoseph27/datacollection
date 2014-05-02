

<%@ page import="magnetboard.Job" %>
<html>
    <head>
    
    <g:javascript plugin="jquery" library="jquery" />
    <g:javascript library="application" />
    <jqui:resources />
    <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        
           <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1 style="font-size:18px"><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${jobInstance}">
            <div class="errors">
                <g:renderErrors bean="${jobInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table style = "width:70%">
                        <tbody>
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="priority"><g:message code="job.priority.label" default="Priority" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'priority', 'errors')}">
                                    <g:select name="priority" from="${['Normal Turn Multi-Layer','Fast Turn Multi-Layer','Rework','Fast Turn Double Sided','Normal Turn Double Sided','Assembly','On-hold']}" value="${jobInstance?.priority}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="process"><g:message code="job.process.label" default="Process" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'process', 'errors')}">
                                    <g:select name="process.id" from="${magnetboard.Process.list()}" optionKey="id" value="${jobInstance?.process?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                            
                                           
                            <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="cam"><g:message code="job.cam.label" default="Cam" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'cam', 'errors')}">
                                    <g:textField name="cam" value="${jobInstance?.cam}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="companyname"><g:message code="job.companyname.label" default="Company Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'companyname', 'errors')}">
                                    <g:textField name="companyname" value="${jobInstance?.companyname}" />
                                </td>
                            </tr>
                        
                                                   
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="duedate"><g:message code="job.duedate.label" default="Due Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'duedate', 'errors')}">
                                    <g:textField name="duedate" value="${jobInstance?.duedate}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="jobname"><g:message code="job.jobname.label" default="Part Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'jobname', 'errors')}">
                                    <g:textField name="jobname" value="${jobInstance?.jobname}" />
                                </td>
                            </tr>
                        
                                                   
                            <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="noboardsperpanel"><g:message code="job.noboardsperpanel.label" default="Number of Boards/Panel" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'noboardsperpanel', 'errors')}">
                                    <g:textField name="noboardsperpanel" value="${jobInstance?.noboardsperpanel}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="noofpanelsmade"><g:message code="job.noofpanelsmade.label" default="Number of Panels Made" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'Noofpanelsmade', 'errors')}">
                                    <g:textField name="noofpanelsmade" value="${jobInstance?.noofpanelsmade}" />
                                </td>
                            </tr>
                        
                                                   
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noofboardsordered"><g:message code="job.noofboardsordered.label" default="Number of Boards Ordered" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'noofboardsordered', 'errors')}">
                                    <g:textField name="noofboardsordered" value="${jobInstance?.noofboardsordered}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="nooflayers"><g:message code="job.nooflayers.label" default="Number of Layers" /></label>
                                </td> 
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'nooflayers', 'errors')}">
                                    <g:textField name="nooflayers" value="${jobInstance?.nooflayers}" />
                                </td>
                            </tr>
                        
                                                   
                            <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="job.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" value="${jobInstance?.notes}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="projectmanager"><g:message code="job.projectmanager.label" default="Project Manager" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'projectmanager', 'errors')}">
                                    <g:textField name="projectmanager" value="${jobInstance?.projectmanager}" />
                                </td>
                            </tr>
                        
                                                   
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="salescontact"><g:message code="job.salescontact.label" default="Sales Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'salescontact', 'errors')}">
                                    <g:textField name="salescontact" value="${jobInstance?.salescontact}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="shoporder"><g:message code="job.shoporder.label" default="Shoporder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'shoporder', 'errors')}">
                                    <g:textField name="shoporder" value="${jobInstance?.shoporder}" />
                                </td>
                            </tr>
                        
                                                    
                            <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="size"><g:message code="job.size.label" default="Panel Size" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'size', 'errors')}">
                                    <g:textField name="size" value="${jobInstance?.size}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="thickness"><g:message code="job.thickness.label" default="Panel Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'thickness', 'errors')}">
                                    <g:textField name="thickness" value="${jobInstance?.thickness}" />
                                </td>
                            </tr>
                            
                                                         
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="totalvalue"><g:message code="job.totalvalue.label" default="Total Job Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'totalvalue', 'errors')}">
                                    <g:textField name="totalvalue" value="${jobInstance?.totalvalue}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="valueperboard"><g:message code="job.valueperboard.label" default="Value Per Board" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'valueperboard', 'errors')}">
                                    <g:textField name="valueperboard" value="${jobInstance?.valueperboard}" />
                                </td>
                            </tr>
                        
                                                   
                            <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="workorder"><g:message code="job.workorder.label" default="Workorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'workorder', 'errors')}">
                                    <g:textField name="workorder" value="${jobInstance?.workorder}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="material"><g:message code="job.material.label" default="Material" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'material', 'errors')}">
                                    <g:select name="material" from="${['TaconicRF35','370HR','4013','FLEX','Polyimide','Rogers4003','other']}" value="${jobInstance?.material}" />
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
