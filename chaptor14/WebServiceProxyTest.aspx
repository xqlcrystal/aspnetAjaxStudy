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

            var sb = new Sys.StringBuilder();
            sb.appendLine(result.get_message());
            sb.appendLine(result.get_stackTrace());
            sb.appendLine(result.get_exceptionType());
            alert(sb.toString());

        }
        function add() {
            var servicePath = "http://localhost:61886/Math.asmx";
            var method = "Add";
            var useget = true;
            var xvalue = $get("firstnumber").value;
            var yvalue = $get("secondnumber").value;
            var param = { x: xvalue, y: yvalue };
            var usercontext = $get("result");

            
            Sys.Net.WebServiceProxy.invoke(servicePath, method, useget, param, onsuccess, onfail, usercontext, 5000);
        }

        function divide() {
            var servicePath = "http://localhost:61886/Math.asmx";
            var method = "Devide";
            var useget = false;
            var xvalue = $get("firstnumber").value;
            var yvalue = $get("secondnumber").value;
            var param = { x: xvalue, y: yvalue };
            var usercontext = $get("result");


            Sys.Net.WebServiceProxy.invoke(servicePath, method, useget, param, onsuccess, onfail, usercontext, 5000);
        }

        function pagemethod() {
            var servicePath = "/WebServiceProxyTest.aspx";
            var method = "Devide";
            var useget = false;
            var xvalue = $get("firstnumber").value;
            var yvalue = $get("secondnumber").value;
            var param = { x: xvalue, y: yvalue };
            var usercontext = $get("result");


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
        <input type="button" value="加上" onclick="add();" />
        <input type="button" value="除以" onclick="divide();" />
        <input type="button" value="PageMethod" onclick="pagemethod();" />
        <span id="result" />
    </form>
</body>
</html>
