<html>
	<body>
		<form action="index.cfm" method="get" name="form">
			 ID : <input type="text" name="pId"><br/>
			<input type="submit" value="submit">
		</form>
		
		
	<cfif IsDefined("form.pId")>
		<cfquery name="myQuery" datasource="sakila" >
			SELECT * FROM actor where actor_id = #form.pId#;
		</cfquery>
		
		<cfdump var=#myQuery#></cfdump>
	
	<p>*********************************************************</p>
	
	</CFIF>
			
	
	
	<cfif IsDefined("URL.pId")>
		<cfquery name="myQuery" datasource="sakila" >
			SELECT * FROM actor where actor_id = #URL.pId#;
		</cfquery>
		
		
		<CFOUTPUT QUERY="myQuery">
	<TR BGCOLOR="##C0C0C0">
    <TD>#Actor_ID#</TD>
    <TD>#FIRST_NAME#</TD>
    <TD>#LAST_NAME#</TD>
    <TD>#LAST_UPDATE#</TD>
    </TR>    
</CFOUTPUT>
		
	<p>??????????????????????/</p>
	</CFIF>

	
	</body>
</html>
