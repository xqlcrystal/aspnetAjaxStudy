<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getlocationTest.aspx.cs" Inherits="chapter06.getlocationTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function clientcallback(myspan) {
            var obj = Sys.UI.DomElement.getLocation(myspan);
            alert("x=" + obj.x + "\n" + "y=" + obj.y);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <span id="myspan"  onclick="clientcallback(this);" >click here</span>

        <div>
            <h1>xieql</h1>
            <div id="mydiv" onclick="clientcallback(this);">click this!</div>
        </div>
    </div>
    </form>
</body>
</html>
