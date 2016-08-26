<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebServiceProxyTest.aspx.cs" Inherits="chaptor14.WebServiceProxyTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function onsuccess(result,usercontext,method) {
            usercontext.innerHTML = result;
        }

        function onfail(result,usercontext,method) {

        }
        function add() {
            var servicePath = "http://localhost:61886/Math.asmx";
            var method = "Add";
            var useget = true;
            var xvalue = $get("firstnumber").value;
            var yvalue = $get("secondnumber").value;
            var param = { x: xvalue, y: yvalue };
            var usercontext = $get("result");

            var webserviceProxy = new Sys.Net.WebServiceProxy();
            Sys.Net.WebServiceProxy.invoke(servicePath, method, useget, param, onsuccess, onfail, usercontext, 5000);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <%--<Services> 
                <asp:ServiceReference Path="~/Math.asmx" />
            </Services>--%>
        </asp:ScriptManager>
    </div>
        <input type="text" name="name" value="" id="firstnumber"/>
        <input type="text" id="secondnumber" />
        <input type="button" onclick="add();" />
        <span id="result" />
    </form>
</body>
</html>
