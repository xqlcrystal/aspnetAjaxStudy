<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6_34preventDefault.aspx.cs" Inherits="chapter06._6_34preventDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            var btn = $get("btn");
            $addHandler(btn, "click", clickcallback);
        }

        function clickcallback(domevent) {
            alert(1);
            domevent.preventDefault();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
        <input type="submit" id="btn" />
    </form>
</body>
</html>
