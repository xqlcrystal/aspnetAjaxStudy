<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_9Shopping.aspx.cs" Inherits="chapter05._5_9Shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script type="text/javascript">
        function pageLoad() {
            var shoppingcart = new Shopping.ShoppingCart();
            shoppingcart.initialize();
            var shoppingcartitem = new Shopping.ShoppingCartItem("1", "PC", 6000);
            shoppingcart.addShoppingCartItem(shoppingcartitem);
            var shoppingcartitems = shoppingcart.get_shoppingCartItems();
            for (var id in shoppingcartitems) {
                alert(shoppingcartitems[id].get_name());
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="~/ShoppingCart.js" />
            </Scripts>
        </asp:ScriptManager>

       
    </div>
    </form>
</body>
</html>
