<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_1_5Arraycontains.aspx.cs" Inherits="WebApplication1._2_1_5Arraycontains" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            a1 = ['m1', 'm2'];
            alert(Array.contains(a1, 'm1'));
            alert(Array.contains(a1, 'm2'));
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
