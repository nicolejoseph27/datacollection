<div>


<jque:newDialog controller='test' action="testCall" ajax="true" id='myDialog2' title="Test Dialog" success="s_div2" width="600">
<jque:dialogTab caption="Tab 1" >
<jque:dialogField name="hiddenfield" value="This field is hidden" type="hidden" />
<jque:dialogField name="message" value="Hello world" labelProperty="message.label" />
<jque:dialogField name="messageTwo" value="Wtf?" />
<jque:checkBoxField name="booleanField" type="checkbox" labelName="This is a boolean field"  checked="${true}" />
<jque:calendarField name="reminder" value="${new Date()}" />

</jque:dialogTab>
<jque:dialogTab caption="Tab 2" >
<jque:dialogField name="hiddenfield2" value="This field is hidden" type="hidden" />
<jque:dialogField name="messageThree" value="Are you still there?" />
<jque:dialogField name="messageFour" value="Really?" />
</jque:dialogTab>

</jque:newDialog>

This is my NEW Dialog:
<jque:newShowDialog dialogId="myDialog2" buttonCaption="Show New Dialog" init="${[reminder:new Date() + 1]}" /><br/>
<jque:newShowDialog dialogId="myDialog2" id="myDialog2_launch2" buttonCaption="Show New Dialog 2" init="${[reminder:new Date() + 2,message:'Newly Initialized Message']}" /><br/>
<jque:newShowDialog dialogId="myDialog2" id="myDialog2_launch3" buttonCaption="Show New Dialog 3" init="${[reminder:new Date() + 3,booleanField:false]}" /><br/>

<div id="s_div2" style="border:1px solid blue;">
Will this change???
</div>


<label><input type="checkbox" id="c"/> I'll be checked/unchecked.</label>
<label><input type="checkbox" id="d"/> I'll be checked/unchecked.</label>
<label><input type="checkbox" id="e"/> I'll be checked/unchecked.</label>
 <input type="button" value="Check" onclick='$("input[type=\"checkbox\"]").attr("checked","checked")'/>
 <input type="button" value="Uncheck" onclick='$("input[type=\"checkbox\"]").removeAttr("checked")'/>

</div>