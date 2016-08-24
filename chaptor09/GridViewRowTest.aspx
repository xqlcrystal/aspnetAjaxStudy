<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewRowTest.aspx.cs" Inherits="chaptor09.GridViewRowTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script type="text/javascript">
        function pageLoad() {
            $create(CustomComponets.GridView, null, null, null, $get("products"));
            $create(CustomComponets.GridViewRow, 
                {rowIndex:1},
                null, 
                { parent: "products" },
                $get("row1"));
            $create(Sys.Preview.UI.Button,
                {
                    command: "Select",
                    argument: "product1"
                },
                null,
                {
                    parent: "row1"
                },
                $get("product1selectbtn1")
            );

            $create(Sys.Preview.UI.Button,
                {
                    command: "Delete",
                    argument:"product1"
                },
                null,
                {
                    parent:"row1"
                },

                $get("product1deletebtn1")
                );

            $create(CustomComponets.GridViewRow,
                { rowIndex: 2 },
                null,
                { parent: "products" },
                $get("row2"));


            $create(Sys.Preview.UI.Button,
              {
                  command: "Select",
                  argument: "product2"
              },
              null,
              {
                  parent: "row2"
              },
              $get("product2selectbtn1")
          );

            $create(Sys.Preview.UI.Button,
                {
                    command: "Delete",
                    argument: "product2"
                },
                null,
                {
                    parent: "row2"
                },

                $get("product2deletebtn1")
                );
        }
    </script>
</head>
<body>
     <form id="form1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Microsoft.Web.Preview" Name="PreviewScript.js" />
                 <asp:ScriptReference Path="~/GridViewCommandEventArgs.js" />                            
                <asp:ScriptReference Path="~/GridViewRow.js" />
                <asp:ScriptReference Path="~/GridView.js" />   
            </Scripts>
        </asp:ScriptManager>
  <table id="products">
      <tr>
          <th>Product Name</th>
          <th>Unit Price</th>
      </tr>
      <tr id="row1">
          <td>Products1</td>
          <td>$100</td>
          <td><button type="button" id="product1selectbtn1">Select</button></td>
          <td><button type="button" id="product1deletebtn1">Delete</button></td>
      </tr>
       <tr id="row2">
          <td>Products2</td>
          <td>$200</td>
          <td><button type="button" id="product2selectbtn1">Select</button></td>
          <td><button type="button" id="product2deletebtn1">Delete</button></td>
      </tr>
  </table>
    </form>
</body>
</html>
