﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_1_3ArrayClear.aspx.cs" Inherits="WebApplication1._2_1_3ArrayClear" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            var a1 = ['m1', 'm2'];
            alert(a1.length);
            Array.clear(a1);
            alert(a1.length);
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
