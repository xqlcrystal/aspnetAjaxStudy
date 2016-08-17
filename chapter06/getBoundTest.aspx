<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getBoundTest.aspx.cs" Inherits="chapter06.getBoundTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            var bound = Sys.UI.DomElement.getBounds($get("myspan"));
            alert(bound.width);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <span id="myspan">world wide</span>
    </div>
    </form>
</body>
</html>
