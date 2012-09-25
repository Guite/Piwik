{*ajaxheader modname=Piwik filename=dashboard.js noscriptaculous=true effects=true*}
{adminheader}
<div class="z-admin-content-pagetitle">
    {icon type="config" size="small"}
    <h3>{gt text="Piwik dashboard"}</h3>
</div>

{modulelinks modname='Piwik' type='dashboard'}<br />

{form cssClass="z-form"}
{formvalidationsummary}

<fieldset>

    <div class="z-formrow">
        {formlabel for="period" __text='Period'}
        {formdropdownlist id="period" items=$periods}  
    </div>
    <div class="z-formrow">
        {formlabel for="date" __text='Date'}
        {formdateinput id="date" useSelectionMode=1 defaultValue='today' daFormat='%e. %B %Y'}
    </div>
    
    
    {*<div id="fromto">
        <div class="z-formrow">
            {formlabel for="from" __text='From'}
            {formdateinput useSelectionMode=1 id="from" ifFormat='%e. %B %Y' dateformat='%e. %B %Y'}
        </div>
        <div class="z-formrow">
            {formlabel for="to" __text='To'}
            {formdateinput useSelectionMode=1 id="to" ifFormat='%e. %B %Y' dateformat='%e. %B %Y'}
        </div>
    </div>*}

    <div class="z-formbuttons z-buttons">
        {formbutton class="z-bt-ok" commandName="save" __text="Show"}
    </div>
</fieldset>

    
{modapifunc modname='Piwik' type='dashboard' func='showOverview' period=$period date=$date}
{modapifunc modname='Piwik' type='dashboard' func='showPages'    period=$period date=$date}

{/form}

{adminfooter}
