<%@ page import="magnetboard.Job" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pepData.label', default: 'Job')}" />
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
    	  data.addColumn('number', 'Mean');
    	  <g:each in="${pep}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'PEP Data',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('pep_div'));
        chart.draw(data, options);
      }
</script>
        <div id="pep_div" style="width: 1500px; height: 500px;"></div>
        
</body>            
    
</html>    