<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getElementByIDTest.aspx.cs" Inherits="chapter06.getElementByIDTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button" />
          <div id="info">
           <div id="level12">
                <asp:ImageButton ID="ImageButton1" runat="server" />
            </div>
        </div>

         
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <script type="text/javascript">
            var element1 = $get("Button1");
            var level1 = $get("info");

            //var div = document.getElementById("info");
            //alert(div);
            var element2 = $get("ImageButton1", level1);

            var element3 = $get("Button1", document.form1);
        </script>
    </div>

      
    </form>
</body>
</html>
