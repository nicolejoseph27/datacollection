
<%@ page import="magnetboard.Job" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
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
                <table style="width:70%">
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.workorder.label" default="Workorder" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "workorder")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.priority.label" default="Priority" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "priority")}</td>
                        </tr>
                    	
                        
                        <tr class="prop2">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.process.label" default="Process" /></td>
                            
                            <td valign="top" class="value" style="text-align:center"><g:link controller="process" action="show" id="${jobInstance?.process?.id}">${jobInstance?.process?.encodeAsHTML()}</g:link></td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.cam.label" default="Cam" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "cam")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.companyname.label" default="Company Name" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "companyname")}</td>
                            
                             <td valign="top" class="name" style="text-align:right"><g:message code="job.duedate.label" default="Due Date" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "duedate")}</td>
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.jobname.label" default="Part Number" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "jobname")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.noboardsperpanel.label" default="Number of Boards/Panel" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "noboardsperpanel")}</td>
                        </tr>
                    
                    	<tr class="prop">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.noofpanelsmade.label" default="Number of Panels Made" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "noofpanelsmade")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.noofboardsordered.label" default="Number of Boards Ordered" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "noofboardsordered")}</td>
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.nooflayers.label" default="Number of Layers" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "nooflayers")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.thickness.label" default="Panel Thickness" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "thickness")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.projectmanager.label" default="Project Manager" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "projectmanager")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.salescontact.label" default="Sales Contact" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "salescontact")}</td>
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.shoporder.label" default="Shoporder" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "shoporder")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.size.label" default="Panel Size" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "size")}</td>                          
                        </tr>
                    
                         <tr class="prop">
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.totalvalue.label" default="Total Job Value" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "totalvalue")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.valueperboard.label" default="Value Per Board" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "valueperboard")}</td>        
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.notes.label" default="Notes"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "notes")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.material.label" default="material"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "material")}</td>
                       </tr>
                       
                       <tr>
                       <td valign="top" class="name" style="text-align:right"><g:message code="job.pepMean.label" default="PEP mean"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "pepMean")}</td>
                       </tr>
                       
                       <tr class="prop">
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.pepOperator.label" default="PEP Operator" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "pepOperator")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.pepDate.label" default="PEP date"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "pepDate")}</td> 
                        </tr>
                    
                       
                       <tr class="prop">
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.dcDate.label" default="DC Plating Date" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcDate")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.dcCell.label" default="DC Plating cell" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcCell")}</td>        
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.dcAt.label" default="DC Plating Area Top"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcAt")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.dcAb.label" default="DC Plating Area Bottom"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcAb")}</td>
                       </tr>
                       
                       <tr class="prop">
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.dcSpec.label" default="DC Plating spec" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcSpec")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.dcOperator.label" default="DC Plating operator" /></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcOperator")}</td>        
                        </tr>
                        
                        <tr class="prop">
                            
                           <td valign="top" class="name" style="text-align:right"><g:message code="job.dcMinCuDeposit.label" default="DC Plating Minimum Cu Deposit"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcMinCuDeposit")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.dcMaxCuDeposit.label" default="DC Plating Maximum Cu Deposit"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "dcMaxCuDeposit")}</td>
                        </tr>
                        
                        <tr class="prop">
                            
                           <td valign="top" class="name" style="text-align:right"><g:message code="job.pluritecOperator.label" default="Plurietc Operator"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "pluritecOperator")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.pluritecDate.label" default="Pluritec Date"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "pluritecDate")}</td>
                        </tr>
                        
                        <tr class="prop">
                            
                           <td valign="top" class="name" style="text-align:right"><g:message code="job.pluritecXcomp.label" default="Plurietc X comp"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "pluritecXcomp")}</td>
                            
                            <td valign="top" class="name" style="text-align:right"><g:message code="job.pluritecYcomp.label" default="Pluritec Y comp"/></td>
                            
                            <td valign="top" class="value" style="text-align:center">${fieldValue(bean: jobInstance, field: "pluritecYcomp")}</td>
                        </tr>
                   
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${jobInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                    <span class="button"><g:actionSubmit class="print" action="print" value="${message(code: 'default.button.print.label', default: 'Print')}"/></span>
                    <span class="button"><g:actionSubmit class="copy" action="copy" value="${message(code: 'default.button.print.label', default: 'Copy')}"/></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
