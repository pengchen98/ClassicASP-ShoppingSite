<%
sql_server = "aspsql.database.windows.net"
sql_user = "aspsql"
sql_pass = "cscI3700@"
sql_db = "favcategorize"

Connection_DSN = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=" & sql_server & ";DATABASE=" & sql_db & ";UID=" & sql_user & ";PWD=" & sql_pass & ";Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;"

Set Baglanti = Server.CreateObject("ADODB.Connection")
Baglanti.Open Connection_DSN
If Baglanti.State = 1 Then
 Response.Write("Connection to the database was successful!")
Else
        Response.Write("<p>Failed to connect to the database.</p>")
End If
%>
