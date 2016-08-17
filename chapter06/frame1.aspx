<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frame1.aspx.cs" Inherits="chapter06.frame1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function framecallback() {
            var frame1textbox = $get("frame1button1");
            var frame2textbox = $get("frame2Button1", parent.frame2.document);
            frame2textbox.value = frame1textbox.value;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    frame1
        <input type="text" name="frame1button1" value="" id="frame1button1" />
        <input type="button" onclick="framecallback();" />
    </div>
    </form>
</body>
</html>
