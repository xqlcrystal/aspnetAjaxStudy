<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_9Shopping.aspx.cs" Inherits="chapter05._5_9Shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script type="text/javascript">

         function shoppingCartInitializedCallback(sender,e) {
             alert("ShoppingCart is initialized!")
         }

         function shoppingCartItemAddingCallback(sender,e) {
             e.set_cancel(false);
             alert("Adding " + e.get_shoppingCartItem().get_name());
         }

         function shoppingCartItemAddedCallback(sender,e) {
             alert("Added " + e.get_shoppingCartItem().get_name());
             if (e.get_exception()) {
                 alert(e.get_exception());
             }
         }

        function pageLoad() {
            var shoppingcart = new Shopping.ShoppingCart();
            shoppingcart.add_shoppingCartInitialized(shoppingCartInitializedCallback);
            shoppingcart.add_shoppingCartItemAdding(shoppingCartItemAddingCallback);
            shoppingcart.add_shoppingCartItemAdded(shoppingCartItemAddedCallback);
            shoppingcart.initialize();
            var shoppingcartitem = new Shopping.ShoppingCartItem("1", "PC", 6000);
            shoppingcart.addShoppingCartItem(shoppingcartitem);

            shoppingcart.remove_shoppingCartItemAdded(shoppingCartItemAddedCallback);
            shoppingcart.remove_shoppingCartItemAdding(shoppingCartItemAddingCallback);
            shoppingcart.remove_shoppingCartInitialized(shoppingCartInitializedCallback);
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
