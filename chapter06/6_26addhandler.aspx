<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6_26addhandler.aspx.cs" Inherits="chapter06._6_26addhandler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            var btn = $get("mybtn");
            $addHandler(btn, "click", clickcb);
        }

        function clickcb(domevent) {
            var msg = "altkey---->" + domevent.altKey;
            msg += ("\nbutton---->" + domevent.button);
            msg += ("\ntype---->" + domevent.type);
            alert(msg);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <button id="mybtn">click here</button>
    </div>
    </form>
</body>
</html>
