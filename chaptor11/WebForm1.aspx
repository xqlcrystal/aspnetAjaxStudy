<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="chaptor11.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            var row = new Sys.Preview.Data.DataRow({ productName: "product1", unitPrice: 100, distributor: "distributor1" });
            var product = row.getProperty("productName");
            var unitprice = row.getProperty("unitPrice");

           
            row.setProperty("productName", "product123");
            alert(product);
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
