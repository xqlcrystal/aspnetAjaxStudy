<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toggleclassTest.aspx.cs" Inherits="chapter06.toggleclassTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .CssClass1{
            background-color:blue;
            color:yellow;
            font-size:40px;
        }

        .CssClass2{
            background-color:yellow;
            color:blue;
            font-weight:bold;
        }
    </style>

    <script type="text/javascript">

        function toggleclass(mylink) {
            Sys.UI.DomElement.toggleCssClass(mylink, "CssClass1");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <a href="http://www.baidu.com" id="mylink" onmouseover="toggleclass(this);" onmouseout="toggleclass(this);" >Baidu</a>
      
    </div>
    </form>
</body>
</html>

