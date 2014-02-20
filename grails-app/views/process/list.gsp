
<%@ page import="magnetboard.Process" %>
<%@ page import="magnetboard.Job" %>
<%@page 
import="org.codehaus.groovy.grails.plugins.web.taglib.JavascriptValue" %>


<html>
    <head>
    
    <g:javascript library="jquery" plugin="jquery"/>
    <g:javascript library="application" />
    <g:javascript library="jquery.rightClick" />
    <jqui:resources />
    <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
    
    <meta http-equiv = "refresh" content = "300">
    
<style type="text/css">
	body{
		font-family: Trebuchet MS, Lucida Sans Unicode, Arial, sans-serif;	/* Font to use */
		background-color:white;
	}
	
	#footer{
		height:30px;
		vertical-align:middle;
		text-align:right;
		clear:both;
		padding-right:3px;
		background-color:#FF66FF;
		margin-top:2px;
		width:1190px;
	}
	#footer form{
		margin:0px;
		margin-top:2px;
	}
	#dhtmlgoodies_dragDropContainer{	/* Main container for this script */
		width:100%;
		background-color:white;
		-moz-user-select:none;
	}
	#dhtmlgoodies_dragDropContainer ul{	/* General rules for all <ul> */
		margin-top:0px;
		margin-left:0px;
		margin-bottom:0px;
		padding:2px;
	}

	#dhtmlgoodies_dragDropContainer li,#dragContent li,li#indicateDestination{	/* Movable items, i.e. <LI> */
		list-style-type:none;
		height:22px;
		background-color:#EEE;
		border:1px solid #000;
		padding:2px;
		margin-bottom:2px;
		cursor:pointer;
		border-radius:6px;
	}

	li#indicateDestination{	/* Box indicating where content will be dropped - i.e. the one you use if you don't use arrow */
		border:1px solid #FF66FF;
		background-color:#FFF;
	}

	/* LEFT COLUMN CSS */
	div#dhtmlgoodies_listOfItems{	/* Left column "New Work Orders" */
		position:absolute;
		float:left;
		padding-left:10px;
		padding-right:10px;

		/* CSS HACK */
		width: 180px;	/* IE 5.x */
		width/* */:/**/165px;	/* Other browsers */
		width: /**/165px;

	}
	#dhtmlgoodies_listOfItems ul{	/* Left(Sources) column <ul> */
		height:2000px;
		overflow-Y:scroll;
	}

	div#dhtmlgoodies_listOfItems div{
		margin-top:2px;
		border:1px solid #999;
		box-shadow:2px 2px 3px 3px #6495ED;
		border-style:groove;
		border-radius:15px;
		background-color:#F5F5F5;
	}
	div#dhtmlgoodies_listOfItems div ul{	/* Left column <ul> */
		margin-left:2px;	/* Space at the left of list - the arrow will be positioned there */
	}
	#dhtmlgoodies_listOfItems div p{	/* Heading above left column */
		margin:0px;
		font-weight:bold;
		padding-left:2px;
		background-color:black;
		color:#FFF;
		margin-bottom:5px;
		text-align:center;
		font-size:16px;
		font-family:sans-serif;
		
	}
	/* END LEFT COLUMN CSS */

	#dhtmlgoodies_dragDropContainer .mouseover{	/* Mouse over effect DIV box in right column */
		background-color:#E2EBED;
	}

	/* Start main container CSS */

	div#dhtmlgoodies_mainContainer{	/* Right column DIV */
		margin-left:185px;
		float:left;
		overflow:auto;
	}
	#dhtmlgoodies_mainContainer div{	/* Parent <div> of small boxes */
		float:left;
		margin-right:10px;
		margin-bottom:10px;
		margin-top:0px;
		border:5px solid #999;
		box-shadow:2px 2px 3px 3px #6495ED;
		border-style:groove;
		border-radius:13px;
		background-color:#F5F5F5;

		/* CSS HACK */
		width: 172px;	/* IE 5.x */
		width/* */:/**/173px;	/* Other browsers */
		width: /**/173px;

	}
	#dhtmlgoodies_mainContainer div ul{
		margin-left:2px;
	}

	#dhtmlgoodies_mainContainer div p{	/* Heading above small boxes */
		margin:0px;
		padding:0px;
		padding-left:4px;
		font-weight:bold;
		background-color:black;
		color:#FFF;
		margin-bottom:5px;
		text-align:center;
		font-size:16px;
		text-transform:capitalize;
		font-family:sans-serif;
	}

	

	#dhtmlgoodies_mainContainer ul{	/* Small box in right column ,i.e <ul> */
		width:165px;
		height:250px;
		border:0px;
		margin-bottom:0px;
		overflow-Y:scroll;
	}

	ul::-webkit-scrollbar {
    width:10px;
	}

	ul::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 10px rgba(0,0,0,0.5);
    border-radius: 10px;
	}

	ul::-webkit-scrollbar-thumb {
    border-radius: 70px;
    -webkit-box-shadow: inset 0 0 15px rgba(0,0,5,15);
	}
	
	ul::-webkit-scrollbar-button:start:decrement,
        ul::-webkit-scrollbar-button:end:increment {
                display: block;
                height: 8px;
        }

	#dragContent{	/* Drag container */
		position:absolute;
		width:75px;
		height:10px;
		display:none;
		margin:0px;
		padding:0px;
		z-index:2000;
	}

	#dragDropIndicator{	/* DIV for the small arrow */
		position:absolute;
		width:7px;
		height:10px;
		display:none;
		z-index:1000;
		margin:0px;
		padding:0px;
	}

	
	</style>
	<style type="text/css" media="print">
	div#dhtmlgoodies_listOfItems{
		display:none;
	}
	body{
		background-color:#FFF;
	}
	img{
		display:none;
	}
	#dhtmlgoodies_dragDropContainer{
		border:0px;
		width:100%;
	}
	</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'process.label', default: 'Process')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
		<script type="text/javascript">
		/* VARIABLES YOU COULD MODIFY */
		var boxSizeArray = [100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100];	// Array indicating how many items there is rooom for in the right column ULs


		var verticalSpaceBetweenListItems = 3;	// Pixels space between one <li> and next
												// Same value or higher as margin bottom in CSS for #dhtmlgoodies_dragDropContainer ul li,#dragContent li


		var indicateDestionationByUseOfArrow = true;	// Display arrow to indicate where object will be dropped(false = use rectangle)

		var cloneSourceItems = false;	// Items picked from main container will be cloned(i.e. "copy" instead of "cut").
		var cloneAllowDuplicates = false;	// Allow multiple instances of an item inside a small box(example: drag Student 1 to team A twice

		/* END VARIABLES YOU COULD MODIFY */

		var dragDropTopContainer = false;
		var dragTimer = -1;
		var dragContentObj = false;
		var contentToBeDragged = false;	// Reference to dragged <li>
		var contentToBeDragged_src = false;	// Reference to parent of <li> before drag started
		var contentToBeDragged_next = false; 	// Reference to next sibling of <li> to be dragged
		var destinationObj = false;	// Reference to <UL> or <LI> where element is dropped.
		var dragDropIndicator = false;	// Reference to small arrow indicating where items will be dropped
		var ulPositionArray = new Array();
		var mouseoverObj = false;	// Reference to highlighted DIV

		var MSIE = navigator.userAgent.indexOf('MSIE')>=0?true:false;
		var navigatorVersion = navigator.appVersion.replace(/.*?MSIE (\d\.\d).*/g,'$1')/1;

		var arrow_offsetX = -5;	// Offset X - position of small arrow
		var arrow_offsetY = 0;	// Offset Y - position of small arrow

		if(!MSIE || navigatorVersion > 6){
			arrow_offsetX = -6;	// Firefox - offset X small arrow
			arrow_offsetY = -13; // Firefox - offset Y small arrow
		}

		var indicateDestinationBox = false;
		function getTopPos(inputObj)
		{
		  var returnValue = inputObj.offsetTop - inputObj.parentNode.parentNode.scrollTop;
		  while((inputObj = inputObj.offsetParent) != null){
		  	if(inputObj.tagName!='HTML')returnValue += inputObj.offsetTop;
		  }
		  return returnValue;
		}

		function getLeftPos(inputObj)
		{
		  var returnValue = inputObj.offsetLeft;
		  while((inputObj = inputObj.offsetParent) != null){
		  	if(inputObj.tagName!='HTML')returnValue += inputObj.offsetLeft;
		  }
		  return returnValue;
		}

		function cancelEvent()
		{
			return false;
		}
		function initDrag(e)	// Mouse button is pressed down on a LI
		{
			$('#:contains(allItems) li').mousedown(function(event) {
			    switch (event.which) {
			        case 1:
			        	if(document.all)e = event;
						var st = Math.max(document.body.scrollTop,document.documentElement.scrollTop);
						var sl = Math.max(document.body.scrollLeft,document.documentElement.scrollLeft);

						dragTimer = 0;
						dragContentObj.style.left = e.clientX + sl + 'px';
						dragContentObj.style.top = e.clientY + st + 'px';
						contentToBeDragged = this;
						contentToBeDragged_src = this.parentNode;
						contentToBeDragged_next = false;
						if(this.nextSibling){
							contentToBeDragged_next = this.nextSibling;
							if(!this.tagName && contentToBeDragged_next.nextSibling)contentToBeDragged_next = contentToBeDragged_next.nextSibling;
						}
						timerDrag();
						return false;
			            break;
			        case 2:
			            break;
			        case 3:
			        	var target=$(this).attr("id")
						//alert(target)
						window.open ("http:/magnetboard/job/show/" + target,"mywindow","resizable=1,width=1050,height=600,toolbar=1,scrollbars=1"); 				
						$('#:contains(allItems) li').noContext();
			            break;
			        default:
			            alert('You have a strange mouse');
			    }
			});
     		
		}

		function timerDrag()
		{
			if(dragTimer>=0 && dragTimer<10){
				dragTimer++;
				setTimeout('timerDrag()',10);
				return;
			}
			if(dragTimer==10){
				findPositions();
				if(cloneSourceItems && contentToBeDragged.parentNode.id.startsWith('allItems')){
					newItem = contentToBeDragged.cloneNode(true);
					newItem.onmousedown = contentToBeDragged.onmousedown;
					contentToBeDragged = newItem;
				}
				dragContentObj.style.display='block';
				dragContentObj.appendChild(contentToBeDragged);
			}
		}

		function findPositions()
		{
			var ulArray = dragDropTopContainer.getElementsByTagName('UL');
			for(var no=0;no<ulArray.length;no++){
			ulPositionArray[no]['left'] = getLeftPos(ulArray[no]);
			ulPositionArray[no]['top'] = getTopPos(ulArray[no]);
			console.info(no + ':' + ulPositionArray[no]['top']);
			}
		} 	

		function moveDragContent(e)
		{
				
			if(dragTimer<10){
				if(contentToBeDragged){
					if(contentToBeDragged_next){
						contentToBeDragged_src.insertBefore(contentToBeDragged,contentToBeDragged_next);
					}else{
						contentToBeDragged_src.appendChild(contentToBeDragged);
					}
				}
				return;

			} 
			
			if(document.all)e = event;
			var st = Math.max(document.body.scrollTop,document.documentElement.scrollTop);
			var sl = Math.max(document.body.scrollLeft,document.documentElement.scrollLeft);


			dragContentObj.style.left = e.clientX + sl + 'px';
			dragContentObj.style.top = e.clientY + st + 'px';

			if(mouseoverObj)mouseoverObj.className='';
			destinationObj = false;
			dragDropIndicator.style.display='none';
			if(indicateDestinationBox)indicateDestinationBox.style.display='none';
			var x = e.clientX + sl;
			var y = e.clientY + st;
			var width = dragContentObj.offsetWidth;
			var height = dragContentObj.offsetHeight;

			var tmpOffsetX = arrow_offsetX;
			var tmpOffsetY = arrow_offsetY;

			for(var no=0;no<ulPositionArray.length;no++){
				var ul_leftPos = ulPositionArray[no]['left'];
				var ul_topPos = ulPositionArray[no]['top'];
				var ul_height = ulPositionArray[no]['height'];
				var ul_width = ulPositionArray[no]['width'];
											
				if((x+width) > ul_leftPos && x<(ul_leftPos + ul_width) && (y+height)> ul_topPos && y<(ul_topPos + ul_height)){
					var noExisting = ulPositionArray[no]['obj'].getElementsByTagName('LI').length;
					if(indicateDestinationBox && indicateDestinationBox.parentNode==ulPositionArray[no]['obj'])noExisting--;
					if(noExisting<boxSizeArray[no-1] || no==0){
						dragDropIndicator.style.left = ul_leftPos + tmpOffsetX + 'px';
						var subLi = ulPositionArray[no]['obj'].getElementsByTagName('LI');

						var clonedItemAllreadyAdded = false;
						if(cloneSourceItems && !cloneAllowDuplicates){
							for(var liIndex=0;liIndex<subLi.length;liIndex++){
								if(contentToBeDragged.id == subLi[liIndex].id)clonedItemAllreadyAdded = true;
							}
							if(clonedItemAllreadyAdded)continue;
						}

						for(var liIndex=0;liIndex<subLi.length;liIndex++){
							var tmpTop = getTopPos(subLi[liIndex]);
							if(!indicateDestionationByUseOfArrow){
								if(y<tmpTop){
									destinationObj = subLi[liIndex];
									indicateDestinationBox.style.display='block';
									subLi[liIndex].parentNode.insertBefore(indicateDestinationBox,subLi[liIndex]);
									break;
								}
							}else{
								if(y<tmpTop){
									destinationObj = subLi[liIndex];
									dragDropIndicator.style.top = tmpTop + tmpOffsetY - Math.round(dragDropIndicator.clientHeight/2) + 'px';
									dragDropIndicator.style.display='block';
									break;
								}
							}
						}

						if(!indicateDestionationByUseOfArrow){
							if(indicateDestinationBox.style.display=='none'){
								indicateDestinationBox.style.display='block';
								ulPositionArray[no]['obj'].appendChild(indicateDestinationBox);
							}

						}else{
							if(subLi.length>0 && dragDropIndicator.style.display=='none'){
								dragDropIndicator.style.top = getTopPos(subLi[subLi.length-1]) + subLi[subLi.length-1].offsetHeight + tmpOffsetY + 'px';
								dragDropIndicator.style.display='block';
							}
							if(subLi.length==0){
								dragDropIndicator.style.top = ul_topPos + arrow_offsetY + 'px'
								dragDropIndicator.style.display='block';
							}
						}

						if(!destinationObj)destinationObj = ulPositionArray[no]['obj'];
						mouseoverObj = ulPositionArray[no]['obj'].parentNode;
						mouseoverObj.className='mouseover';
						return;
					}
				}
			}
		}

		/* End dragging
		Put <LI> into a destination or back to where it came from.
		*/
		function dragDropEnd(e)
		

		{
			if(dragTimer==-1)return;
			if(dragTimer<10){
				dragTimer = -1;
				return;
			}
			dragTimer = -1;
			if(document.all)e = event;


			if(cloneSourceItems && (!destinationObj || (destinationObj && (destinationObj.id.startsWith('allItems') || destinationObj.parentNode.id.startsWith('allItems'))))){
				contentToBeDragged.parentNode.removeChild(contentToBeDragged);
			}else{
				
				if(destinationObj){
					if(destinationObj.tagName=='UL'){
						destinationObj.appendChild(contentToBeDragged);
						var lparams = {
							jobId: contentToBeDragged.id,
							processId: destinationObj.id.substr(9),
							oldprocessId: contentToBeDragged_src.id.substr(9)
						}
						${remoteFunction(controller:'process', action:'dropJob', params:'jQuery.param(lparams)')}
						}else{
						destinationObj.parentNode.insertBefore(contentToBeDragged,destinationObj);
						var lparams = {
							jobId: contentToBeDragged.id,
							processId: $(destinationObj).parent().attr("id").substr(9),
							oldprocessId: contentToBeDragged_src.id.substr(9)
						}
						${remoteFunction(controller:'process', action:'dropJob', params:'jQuery.param(lparams)')}		
					}
					mouseoverObj.className='';
					destinationObj = false;
					dragDropIndicator.style.display='none';
					if(indicateDestinationBox){
						indicateDestinationBox.style.display='none';
						document.body.appendChild(indicateDestinationBox);
					}
					contentToBeDragged = false;
					return;
				}
				if(contentToBeDragged_next){
					contentToBeDragged_src.insertBefore(contentToBeDragged,contentToBeDragged_next);
				}else{
					contentToBeDragged_src.appendChild(contentToBeDragged);
				}
			}
			contentToBeDragged = false;
			dragDropIndicator.style.display='none';
			if(indicateDestinationBox){
				indicateDestinationBox.style.display='none';
				document.body.appendChild(indicateDestinationBox);

			}
			mouseoverObj = false;

		}


		function initDragDropScript()
		{
			dragContentObj = document.getElementById('dragContent');
			dragDropIndicator = document.getElementById('dragDropIndicator');
			dragDropTopContainer = document.getElementById('dhtmlgoodies_dragDropContainer');
			document.documentElement.onselectstart = cancelEvent;;
			var listItems = dragDropTopContainer.getElementsByTagName('LI');	// Get array containing all <LI>
			var itemHeight = false;
			for(var no=0;no<listItems.length;no++){
				listItems[no].onmouseover = initDrag;
				listItems[no].onselectstart = cancelEvent;
				if(!itemHeight)itemHeight = listItems[no].offsetHeight;
				if(MSIE && navigatorVersion/1<6){
					listItems[no].style.cursor='hand';
				}
			
			}


			var mainContainer = document.getElementById('dhtmlgoodies_mainContainer');
			var uls = mainContainer.getElementsByTagName('UL');
			itemHeight = itemHeight + verticalSpaceBetweenListItems;
			for(var no=0;no<uls.length;no++){
				uls[no].style.height = itemHeight * 8  + 'px';
			}
			
			var leftContainer = document.getElementById('dhtmlgoodies_listOfItems');
			var itemBox = leftContainer.getElementsByTagName('UL')[0];

			document.documentElement.onmousemove = moveDragContent;	// Mouse move event - moving draggable div
			document.documentElement.onmouseup = dragDropEnd;	// Mouse move event - moving draggable div

			var ulArray = dragDropTopContainer.getElementsByTagName('UL');
			for(var no=0;no<ulArray.length;no++){
				ulPositionArray[no] = new Array();
				ulPositionArray[no]['left'] = getLeftPos(ulArray[no]);
				ulPositionArray[no]['top'] = getTopPos(ulArray[no]);
				ulPositionArray[no]['width'] = ulArray[no].offsetWidth;
				ulPositionArray[no]['height'] = ulArray[no].clientHeight;
				ulPositionArray[no]['obj'] = ulArray[no];
			}
			

			if(!indicateDestionationByUseOfArrow){
				indicateDestinationBox = document.createElement('LI');
				indicateDestinationBox.id = 'indicateDestination';
				indicateDestinationBox.style.display='none';
				document.body.appendChild(indicateDestinationBox);


			}
		}		window.onload = initDragDropScript;
		

				
			// right click on the process for throughput information
			//$(document).ready( function() {	
			//	$("#dhtmlgoodies_mainContainer ul").rightClick( function(e) {
			//	var target=$(this).attr("id")
			//	alert(target);
			//	});	
			//	$('#dhtmlgoodies_mainContainer ul').noContext();
			//});
		</script>
    </head>
    <body>
        	<div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div id="dhtmlgoodies_dragDropContainer">
	<div id="dhtmlgoodies_listOfItems">	
		<div>
			<p style="border-top-right-radius:9px;border-top-left-radius:9px">New Work Orders</p>
		<ul id="allItems">
			<g:each in="${jobInstanceList}" status="i" var="jobInstance" >
			<g:if test= "${jobInstance.process.toString() == 'null'}">
			<g:if test = "${jobInstance.priority == 'Normal Turn Multi-Layer'}">
			<li id="${jobInstance.id}" style="border-radius:6px">
			<p style="background-color:#FFB84D;color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">			
			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Fast Turn Multi-Layer'}">
			<li id="${jobInstance.id}" style="border-radius:6px">
			<p style="background-color:red;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left;font-size:14px">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Rework'}">
			<li id="${jobInstance.id}" style="border-radius:6px">
			<p style="background-color:#00CC33;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Normal Turn Double Sided'}">
			<li id="${jobInstance.id}" style="border-radius:6px">
			<p style="background-color:white;color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Fast Turn Double Sided'}">
			<li id="${jobInstance.id}" style="border-radius:6px">
			<p style="background-color:yellow;color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Assembly'}">
			<li id="${jobInstance.id}" style="border-radius:6px">
			<p style="background-color:blue;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'On-hold'}">
			<li id="${jobInstance.id}" style="border-radius:6px">
			<p style="background-color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>
 			</li>
 			</g:if>
			</g:if>
			</g:each>
		</ul>
		</div>
	</div>
	<div id="dhtmlgoodies_mainContainer">
		<!-- ONE <UL> for each "room" -->
		<g:each in="${processInstanceList.sort{it.priority}}" status="i" var="processInstance">
		<div>
			<p style="border-top-right-radius:9px;border-top-left-radius:9px">${fieldValue(bean: processInstance, field: "canister")}</p>
			<ul id="allItems_${processInstance.id}">
			<g:each in="${jobInstanceList}" status="j" var="jobInstance" >
			<g:if test= "${processInstance.canister == jobInstance.process.toString()}">
			<g:if test = "${jobInstance.priority == 'Normal Turn Multi-Layer'}">
			<li id="${jobInstance.id}">
			<p style="background-color:#FFB84D;color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">			
			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>		
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Fast Turn Multi-Layer'}">
			<li id="${jobInstance.id}">
			<p style="background-color:red;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Rework'}">
			<li id="${jobInstance.id}">
			<p style="background-color:#00CC33;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Normal Turn Double Sided'}">
			<li id="${jobInstance.id}">
			<p style="background-color:white;color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Fast Turn Double Sided'}">
			<li id="${jobInstance.id}">
			<p style="background-color:yellow;color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'Assembly'}">
			<li id="${jobInstance.id}">
			<p style="background-color:blue;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>	
			</li>
			</g:if>
			<g:if test = "${jobInstance.priority == 'On-hold'}">
			<li id="${jobInstance.id}">
			<p style="background-color:black;font-family:arial;font-size:18px;padding-right:2px;border-radius:4px">
			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "companyname")}</span>-->
 			<span style="float:left">${fieldValue(bean: jobInstance, field: "workorder")}</span>
 			<!--</br>-->
 			<!--<span style="float:left">${fieldValue(bean: jobInstance, field: "jobname")}</span>-->
 			<span style="float:right;font-size:12px">${fieldValue(bean: jobInstance, field: "duedate")}</span>
 			</br>
 			</p>
 			</li>
 			</g:if>
			</g:if>
			</g:each>
			</ul>	
		</div>
		</g:each>
	</div>
</div>
<ul id="dragContent"></ul>
<div id="dragDropIndicator"></div>
<div id="saveContent"><!-- THIS ID IS ONLY NEEDED FOR THE DEMO --></div>
 </body>
</html>
