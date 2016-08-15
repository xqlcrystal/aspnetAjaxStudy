<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_1_1ArrayAdd.aspx.cs" Inherits="WebApplication1._2_1_1ArrayAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            var a = ['m1', 'm2'];
            Array.add(a, 'm2');
            for (var i = 0; i < a.length; i++) {
                alert(a[i]);
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
