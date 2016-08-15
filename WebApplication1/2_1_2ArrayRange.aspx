<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_1_2ArrayRange.aspx.cs" Inherits="WebApplication1._2_1_2ArrayRange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            var a1 = ['m1', 'm2'];
            var a2 = ['m3', 'm4', 'm5'];
            Array.addRange(a1, a2);
            for (var i = 0; i < a1.length; i++) {
                alert(a1[i]);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
    </form>
</body>
</html>
