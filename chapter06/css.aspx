<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="css.aspx.cs" Inherits="chapter06.css" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .CssClass1{
            background-color:blue;
            color:yellow;
            font-weight:bold;
        }

        .CssClass2{
            background-color:yellow;
            color:blue;
            font-weight:bold;
        }
    </style>

    <script type="text/javascript">

        var myLinkDomElementobj;
        var mylist;
        function AddCallback() {
            var mycssclass = mylist.options[mylist.selectedIndex].value;
            Sys.UI.DomElement.addCssClass(myLinkDomElementobj, mycssclass);
        }

        function RemoveCallback() {
            var mycssclass = mylist.options[mylist.selectedIndex].value;
            Sys.UI.DomElement.removeCssClass(myLinkDomElementobj, mycssclass);
        }

        function pageLoad() {
            myLinkDomElementobj = $get("mylink");
            mylist = $get("myList");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <a href="http://www.baidu.com" id="mylink">Baidu</a>
        <select id="myList">
            <option value="CssClass1">Css Class 1</option>
            <option value="CssClass2">Css Class 2</option>
        </select>

        <input type="button" name="Add" value="Add" onclick="AddCallback();" />
        <input type="button" name="remove" value="Remove" onclick="RemoveCallback();"/>
    </div>
    </form>
</body>
</html>
