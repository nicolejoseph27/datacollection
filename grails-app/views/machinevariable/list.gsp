
<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machineVariable.label', default: 'MachineVariable')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', '2 Camera Area');
    	  data.addColumn('number', '4 Camera Area');
    	  data.addColumn('number', 'Films Area');
    	  <g:each in="${goldRoomFilms}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Particles in the Goldroom and Films',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
       			 vAxis: {viewWindow: {
           			 max: 100000,
           			 min:0}
       			 }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('goldRoomFilms_div'));
        chart.draw(data, options);
      }
</script>
        <div id="goldRoomFilms_div" style="width: 1500px; height: 500px;"></div>        
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', '2 Camera Area');
    	  data.addColumn('number', '4 Camera Area')
    	  <g:each in="${goldRoom}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Particles in the Goldroom',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    vAxis: {viewWindow: {max: 30000, min:0}}
        	    
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('goldRoom_div'));
        chart.draw(data, options);
      }
</script>
        <div id="goldRoom_div" style="width: 1500px; height: 500px;"></div>        
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Before Air Cleaner');
    	  data.addColumn('number', 'After Air Cleaner')
    	  <g:each in="${air}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Before/After Air Cleaner 0.5 Micron Particles per Square Foot',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
</script>
        <div id="chart_div" style="width: 1500px; height: 500px;"></div>
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Soldermask Room');
    	  data.addColumn('number', 'Adjacent Hall')
    	  <g:each in="${hall}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Hall/Soldermask 0.5 Micron Particles per Square Foot',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('hall_div'));
        chart.draw(data, options);
      }
</script>
        <div id="hall_div" style="width: 1500px; height: 500px;"></div>
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Spray Temp');
    	  data.addColumn('number', '2 Camera Temp');
    	  data.addColumn('number', '4 Camera Temp');
    	  data.addColumn('number', 'Films Temp');
    	  <g:each in="${temp}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]},${e[4]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Room Temperatures',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('temp_div'));
        chart.draw(data, options);
      }
</script>
        <div id="temp_div" style="width: 1500px; height: 500px;"></div> 
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Spray Humidity');
    	  data.addColumn('number', '2 Camera Humidity');
    	  data.addColumn('number', '4 Camera Humidity');
    	  data.addColumn('number', 'Films Humidity');
    	  <g:each in="${humid}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]},${e[4]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Room Humidities',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('humid_div'));
        chart.draw(data, options);
      }
</script>
        <div id="humid_div" style="width: 1500px; height: 500px;"></div> 
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Spray Room');
    	  data.addColumn('number', 'Spray Room after Air Cleaner');
    	  data.addColumn('number', '2 Camera Area');
    	  data.addColumn('number', '4 Camera Area');
    	  data.addColumn('number', 'Hall');
    	  data.addColumn('number', 'Films');
    	  <g:each in="${fiveMicron}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]},${e[4]},${e[5]},${e[6]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Five Micron Particles',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    vAxis: {viewWindow: {min:0, max:500}}
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('fiveMicron_div'));
        chart.draw(data, options);
      }
</script>
        <div id="fiveMicron_div" style="width: 1500px; height: 500px;"></div>               
 <br>       
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'machineVariable.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="airQuality_date" title="${message(code: 'machineVariable.airQuality_date.label', default: 'Air Qualitydate')}" />
                        
                            <g:sortableColumn property="airQuality_operator" title="${message(code: 'machineVariable.airQuality_operator.label', default: 'Air Qualityoperator')}" />
                        
                            <g:sortableColumn property="airQuality_spray" title="${message(code: 'machineVariable.airQuality_spray.label', default: 'Air Qualityspray')}" />
                        
                            <g:sortableColumn property="airQuality_spray5" title="${message(code: 'machineVariable.airQuality_spray5.label', default: 'Air Qualityspray5')}" />
                        
                            <g:sortableColumn property="airQuality_sprayTemp" title="${message(code: 'machineVariable.airQuality_sprayTemp.label', default: 'Air Qualityspray Temp')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${machineVariableInstanceList}" status="i" var="machineVariableInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${machineVariableInstance.id}">${fieldValue(bean: machineVariableInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${machineVariableInstance.airQuality_date}" /></td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_operator")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_spray")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_spray5")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayTemp")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${machineVariableInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
