<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_15getbaseType.aspx.cs" Inherits="chapter4._4_15getbaseType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <script type="text/javascript">

            Type.registerNamespace("Department");

            Department.employee = function () {

            }

            Department.employee.prototype = {

            }

            Department.employee.registerClass("Department.employee");

            Department.manger = function () {
                Department.manger.initializeBase(this);
            }

            Department.manger.prototype = function () {
                
            }

            Department.manger.registerClass("Department.manger", Department.employee);

            alert(Department.manger.getBaseType());

        </script>
    </div>
    </form>
</body>
</html>
