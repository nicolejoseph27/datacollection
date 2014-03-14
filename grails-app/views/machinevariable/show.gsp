
<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machineVariable.label', default: 'MachineVariable')}" />
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
                            <td valign="top" class="name"><g:message code="machineVariable.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_date.label" default="Air Qualitydate" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${machineVariableInstance?.airQuality_date}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_operator.label" default="Air Qualityoperator" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_operator")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_spray.label" default="Air Qualityspray" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_spray")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_spray5.label" default="Air Qualityspray5" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_spray5")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_sprayTemp.label" default="Air Qualityspray Temp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayTemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_sprayHumid.label" default="Air Qualityspray Humid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayHumid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_sprayPressure.label" default="Air Qualityspray Pressure" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayPressure")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_sprayafterac.label" default="Air Qualitysprayafterac" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayafterac")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_sprayafterac5.label" default="Air Qualitysprayafterac5" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayafterac5")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_hall.label" default="Air Qualityhall" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_hall")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_hall5.label" default="Air Qualityhall5" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_hall5")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_films.label" default="Air Qualityfilms" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_films")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_films5.label" default="Air Qualityfilms5" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_films5")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_filmsTemp.label" default="Air Qualityfilms Temp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_filmsTemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_filmsHumid.label" default="Air Qualityfilms Humid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_filmsHumid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_filmsPressure.label" default="Air Qualityfilms Pressure" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_filmsPressure")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_2camera.label" default="Air Quality2camera" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_2camera")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_2camera5.label" default="Air Quality2camera5" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_2camera5")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_2cameraTemp.label" default="Air Quality2camera Temp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_2cameraTemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_2cameraHumid.label" default="Air Quality2camera Humid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_2cameraHumid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_2cameraPressure.label" default="Air Quality2camera Pressure" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_2cameraPressure")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_4camera.label" default="Air Quality4camera" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_4camera")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_4camera5.label" default="Air Quality4camera5" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_4camera5")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_4cameraTemp.label" default="Air Quality4camera Temp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_4cameraTemp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_4cameraHumid.label" default="Air Quality4camera Humid" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_4cameraHumid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="machineVariable.airQuality_4cameraPressure.label" default="Air Quality4camera Pressure" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: machineVariableInstance, field: "airQuality_4cameraPressure")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${machineVariableInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
