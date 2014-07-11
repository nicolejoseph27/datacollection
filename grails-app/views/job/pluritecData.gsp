<%@ page import="magnetboard.Job" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pluritecData.label', default: 'Job')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        
    </head>
    
<body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>

<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          

    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'X compensation');
    	  data.addColumn('number', 'Y compensation');
    	  data.addColumn('number', 'X average');
    	  data.addColumn('number', 'Y average');
    	  <g:each in="${plur}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]},${e[4]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Pluritec Data',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('plur_div'));
        chart.draw(data, options);
      }
</script>
        <div id="plur_div" style="width: 1500px; height: 500px;"></div>
        
</body>            
    
</html>    