<html>
	<body>
		<form action="index.cfm" method="get" name="form">
			 ID : <input type="text" value="pId" name="pId"><br/>
			<input type="submit" value="submit">
		</form>
		
		
	<cfif IsDefined("form.pId")>
		<cfquery name="myQuery" datasource="cfDemo"  result="myResult">
			SELECT * FROM PROPERTY where PID = #form.pId#;
		</cfquery>
		
		<table>
				<TR BGCOLOR="Yellow">
				<TD>PID</TD>
				<TD>PNAME</TD>
				<TD>PLOCATION</TD>
				</TR>
				<CFOUTPUT QUERY="myQuery">
					<TR BGCOLOR="Grey">
					<TD>#PID#</TD>
					<TD>#PNAME#</TD>
					<TD>#PLOCATION#</TD>
					</TR>
				</CFOUTPUT>
				<TR>
				</tr>
			</table>
	
	<p>Using Form</p>
	
	</CFIF>
	
		<cfif IsDefined("URL.pId")>
		<cfquery name="myQuery" datasource="cfDemo" >
			SELECT * FROM PROPERTY where PID = #URL.pId#;
		</cfquery>
		
		
		
			<table>
				<TR BGCOLOR="Yellow">
				<TD>PID</TD>
				<TD>PNAME</TD>
				<TD>PLOCATION</TD>
				</TR>
				<CFOUTPUT QUERY="myQuery">
					<TR BGCOLOR="Grey">
					<TD>#PID#</TD>
					<TD>#PNAME#</TD>
					<TD>#PLOCATION#</TD>
					</TR>
				</CFOUTPUT>
				<TR>
				</tr>
			</table>
		
		
	<p>USING URL</p>
	</CFIF>
	
	

	
	</body>
</html>
