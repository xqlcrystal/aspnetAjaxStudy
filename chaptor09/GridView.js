///<reference name="MicrosoftAjax.js"/>
//1、演示BubbleEvent
Type.registerNamespace("CustomComponets");

CustomComponets.GridView = function CustomComponets$GridView (associatedElement) {
    CustomComponets.GridView.initializeBase(this, [associatedElement]);
}

function CustomComponets$GridView$onBubbleEvent(source, args) {
    var handled = false;
    if (args instanceof Sys.Preview.UI.CommandEventArgs) {
        switch (args.get_commandName()) {

            case "Select": {
                alert(args.get_argument() + " is selected");
                handled = true;
                break;
            }
            case "Delete": {
                alert(args.get_argument() + " is Deleted");
                handled = true;
                break;
            }


            default:

        }

        return handled;
    }

}

CustomComponets.GridView.prototype = {
    onBubbleEvent: CustomComponets$GridView$onBubbleEvent
}

CustomComponets.GridView.registerClass("CustomComponets.GridView", Sys.UI.Control);