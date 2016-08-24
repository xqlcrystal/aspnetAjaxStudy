<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataTableTest.aspx.cs" Inherits="chaptor11.DataTableTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%--<script type="text/javascript" src="PreviewScript.debug.js" />--%>
    <script type="text/javascript">
        function pageLoad() {
            var dataColumns = [];
            dataColumns[dataColumns.length] = new Sys.Preview.Data.DataColumn("ProductId", Number, 1, true, true);
            dataColumns[dataColumns.length] = new Sys.Preview.Data.DataColumn("ProductName", String, "Unknown", true, false);
            dataColumns[dataColumns.length] = new Sys.Preview.Data.DataColumn("UnitePrice", Number, 50, true, false);

            var datatable = new Sys.Preview.Data.DataTable(dataColumns);

            var rowObject = { "ProductID": 1, "ProductName": "X260", "UnitePrice": 7000 };
            var row = datatable.createRow(rowObject);
            datatable.add(row);


            rowObject = { "ProductID": 2, "ProductName": "X260-S", "UnitePrice": 8000 };
            row = datatable.createRow(rowObject);
            datatable.add(row);


            rowObject = { "ProductID": 3, "ProductName": "X260-D", "UnitePrice": 9000 };
            row = datatable.createRow(rowObject);
            datatable.add(row);

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Microsoft.Web.Preview" Name="PreviewScript.js" />
            </Scripts>
        </asp:ScriptManager>
    <div>
    
    </div>
    </form>
</body>
</html>
