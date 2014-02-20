
<%@ page import="magnetboard.Finishedjobs" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'finishedjobs.label', default: 'Finishedjobs')}" />
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
                            <td valign="top" class="name"><g:message code="finishedjobs.companyname.label" default="Company Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "companyname")}</td>
                            
                             <td valign="top" class="name"><g:message code="finishedjobs.datefinished.label" default="Date Finished" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${finishedjobsInstance?.datefinished}" /></td>
                            
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name"><g:message code="finishedjobs.jobname.label" default="Part Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "jobname")}</td>
                            
                            <td valign="top" class="name"><g:message code="finishedjobs.workorder.label" default="Workorder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "workorder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="finishedjobs.noboardsperpanel.label" default="Number of Boards/Panel" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "noboardsperpanel")}</td>
                            
                            <td valign="top" class="name"><g:message code="finishedjobs.noofboardsordered.label" default="Number of Boards Ordered" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "noofboardsordered")}</td>
                            
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name"><g:message code="finishedjobs.nooflayers.label" default="Number of Layers" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "nooflayers")}</td>
                            
                             <td valign="top" class="name"><g:message code="finishedjobs.noofpanelsmade.label" default="Number of Panels Made" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "noofpanelsmade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="finishedjobs.projectmanager.label" default="Project Manager" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "projectmanager")}</td>
                            
                            <td valign="top" class="name"><g:message code="finishedjobs.salescontact.label" default="Sales Contact" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "salescontact")}</td>
                            
                        </tr>
                    
                        <tr class="prop2">
                            <td valign="top" class="name"><g:message code="finishedjobs.shoporder.label" default="Shoporder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "shoporder")}</td>
                            
                             <td valign="top" class="name"><g:message code="finishedjobs.size.label" default="Panel Size" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "size")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="finishedjobs.totalvalue.label" default="Total Job Value" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "totalvalue")}</td>
                            
                            <td valign="top" class="name"><g:message code="finishedjobs.valueperboard.label" default="Value Per Board" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "valueperboard")}</td>
                            
                        </tr>
                    
                         <tr class="prop2">
                            <td valign="top" class="name"><g:message code="finishedjobs.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: finishedjobsInstance, field: "notes")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${finishedjobsInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
