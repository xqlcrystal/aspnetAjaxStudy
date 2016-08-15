<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_1JavaScriptFunction.aspx.cs" Inherits="chapter4._4_1JavaScriptFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript">
        function myfunction() {
            for (var i = 0; i < arguments.length; i++) {
                alert(arguments[i]);
            }
        }
        window.onload = function () {
            //myfunction("info1");
            //myfunction("info1", "info2");

            //alert(myfunction.constructor);

            alert(myfunction.prototype);
        }
    </script>
    </div>
    </form>
</body>
</html>
