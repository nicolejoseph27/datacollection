<html>
    <head>
    
    <g:javascript plugin="jquery" library="jquery" />
   <g:javascript library="application" />
   <jqui:resources />
   <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
   
        <meta name="layout" content="main"/>
        <h1 style="font-size:52px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Compunetics</h1> 
        <h2 style="font-style:italic;font-size:20px;text-align:center">excellence, measured in microns.</h2>
        
        
        <style type="text/css" media="screen">
	
		body{
		    background-image: url(images/pcb3.aspx);
		 	background-repeat:repeat-y;
		 	}
	
        #pageBody {
        	margin-top:70px;
            margin-left:17%;
            margin-right:17%;
        }
        
       
		div.job {
			width:30%;
			padding:10px;
			border-color:#DBDBDB;
			border-width:6px;	
            border-style:inset;
			margin:0px;
			text-align:center;
			border-radius:13px;
			background-color:#F7F7F7;
		}
		
        </style>
               
    </head>
    <body>
        
        <jque:newDialog controller='job' action="reCreate" ajax="false" id='redoJob' title="Search for Existing Jobs" success="s_div2" width="600">
    <jque:dialogField name="partnumber" value="" />
    </jque:newDialog>
    
      
               
        <div id="pageBody">
        
        <ul style="font-size:15px">
        		<div class="job" style = "float:left">
                	 <g:link controller="job" style="color:#228B22;text-transform:capitalize">list of current jobs</g:link>
               </div> 
               <div class="job" style = "float:right"> 
                	 <g:link controller="job" action="create" style="color:#228B22;text-transform:capitalize">create a job</g:link>
               </div>
               <div style="height:60px"></div>
               <div class="job" style = "float:left"> 
                   	 <g:link controller="machine" action="addJobDataList" style="color:#228B22;text-transform:capitalize">Add Job Data</g:link>
               </div>
               <div class="job" style = "float:right"> 
                	 <g:link controller="finishedjobs" style="color:#228B22;text-transform:capitalize">job archive</g:link>
               </div>
				<div style="height:60px"></div>
				 <div class="job" style = "float:left"> 
                   	 <jque:newShowDialog buttonCaption="Create a Redo Job" dialogId="redoJob" />
               </div>
               <div class="job" style = "float:right"> 
                   	 <g:link controller="machine" action="addMachineDataList" style="color:#228B22;text-transform:capitalize">Add Machine Data</g:link>
               </div>
               <div style="height:60px"></div>
                <div class="job" style = "float:left"> 
                   	 <g:link controller="machine" action="list" style="color:#228B22;text-transform:capitalize">List of machines</g:link>
               </div>
               <div class="job" style = "float:right"> 
                   	 <g:link controller="maintenanceOnMachines" action="create" style="color:#228B22;text-transform:capitalize">Maintenance Time</g:link>
               </div>
               <div class="job" style = "float:right"> 
                   	 <g:link controller="maintenanceOnMachines" action="maintenanceGraph" style="color:#228B22;text-transform:capitalize">Maintenance Graph</g:link>
               </div>
				<!--
               <div class="job" style = "float:left"> 
                	 <g:link controller="throughput" style="color:#228B22;text-transform:capitalize">throughput</g:link>
               </div>
               <div class="job" style = "float:right"> 
                	 <g:link controller="process" action="bethview" style="color:#228B22;text-transform:capitalize">bethview</g:link>
               </div>
               <div style="height:60px"></div>
               <div class="job" style = "float:left"> 
                   	 <g:link controller="process" action="prioritylist" style="color:#228B22;text-transform:capitalize">List of processes</g:link>
               </div>
               <div class="job" style = "float:right"> 
                   	 <jque:newShowDialog buttonCaption="Create a Redo Job" dialogId="redoJob" />
               </div>
               <div style="height:60px"></div>
				<div class="job" style = "float:left"> 
                   	 <g:link controller="maintenance" action="list" style="color:#228B22;text-transform:capitalize">List of maintenance</g:link>
               </div>
               <div class="job" style = "float:right"> 
                   	 <g:link controller="machine" action="list" style="color:#228B22;text-transform:capitalize">List of machines</g:link>
               </div>
               <div style="height:60px"></div>
               <div class="job" style = "float:left"> 
                   	 <g:link controller="machineVariable" action="list" style="color:#228B22;text-transform:capitalize">List of variables for machines</g:link>
               </div>
               <div class="job" style = "float:right">
                	 <g:link controller="process" style="color:#228B22;text-transform:capitalize">magnetboard</g:link>
               </div>   -->
               </ul>
        </div>
    </body>
</html>
