<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WindowTest.aspx.cs" Inherits="chaptor12.WindowTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <%-- <script type="text/javascript"  src="PreviewScript.debug.js" />--%>
    <script type="text/javascript">
        function pageLoad() {
            //Sys.Preview.UI.Window.messageBox("nihao", Sys.Preview.UI.MessageBoxStyle.OK);
            Sys.Preview.UI.Window.inputBox("your weight", 70);
        }
       
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Microsoft.Web.Preview" Name="PreviewScript.js" />
            </Scripts>
        </asp:ScriptManager>
    </div>
    </form>
</body>
</html>
