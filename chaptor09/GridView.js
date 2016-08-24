///<reference name="MicrosoftAjax.js"/>
//1、演示BubbleEvent
Type.registerNamespace("CustomComponets");

CustomComponets.GridView = function CustomComponets$GridView (associatedElement) {
    CustomComponets.GridView.initializeBase(this, [associatedElement]);
}

function CustomComponets$GridView$onBubbleEvent(source, args) {
    var handled = false;
    if (args instanceof CustomComponets.GridViewCommandEventArgs) {
        switch (args.get_commandName()) {

            case "Select": {
                alert(args.get_argument() + "from row index "+args.get_row().get_rowIndex() +" is selected");
                handled = true;
                break;
            }
            case "Delete": {
                alert(args.get_argument() +" from row index "+args.get_row().get_rowIndex()+ " is Deleted");
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