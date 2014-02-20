

<%@ page import="magnetboard.Machine" %>
<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
    <g:javascript library="jquery" plugin="jquery"/>
    <g:javascript library="application" />
    <g:javascript library="jquery.rightClick" />
    <jqui:resources />
    <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machine.label', default: 'Machine')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <script language="javascript" type="text/javascript">
        $(function() {
            $("#MoveRight,#MoveLeft").click(function(event) {
                var id = $(event.target).attr("id");
                var selectFrom = id == "MoveRight" ? "#SelectLeft" : "#SelectRight";
                var moveTo = id == "MoveRight" ? "#SelectRight" : "#SelectLeft";
 
                var selectedItems = $(selectFrom + " :selected").toArray();
				$(moveTo).append(selectedItems);
				var values = $("#SelectRight").val();
                              
               var lparams = {
							variablearray: values					
                       }
               ${remoteFunction(controller:'machine', action:'save', params:'jQuery.param(lparams)')}
                selectedItems.remove;
            });
        });
    </script> 
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
            <g:hasErrors bean="${machineInstance}">
            <div class="errors">
                <g:renderErrors bean="${machineInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="array"><g:message code="machine.array.label" default="Array" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineInstance, field: 'array', 'errors')}">
                                    <g:textField name="array" value="${machineInstance?.array}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="machine.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${machineInstance?.name}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
            <form method="get">             
      <g:select name="SelectLeft" from = "${Machinevariable.list()}" multiple="multiple" value= "${machinevariable?.name}" size = "25"      
      />
           
      <input id="MoveRight" type="button" value=" >> " />
      <input id="MoveLeft" type="button" value=" << " />
       
      <select id="SelectRight" multiple="multiple" size="25">          
      </select>
</form>
        </div>
    </body>
</html>
