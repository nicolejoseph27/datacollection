<div>
This is my NEW Dialog:
<jque:showDialog dialogId="myDialog3" buttonCaption="Show New Dialog"/>


<jque:newDialog controller='test' action="testCall" ajax="true" id='myDialog3' title="Test Dialog" success="s_div3" width="600">
<jque:dialogField name="message" value="Are you still there?" />
</jque:newDialog>


<div id="s_div3" style="border:1px solid blue;">
Will this change???
</div>

</div>