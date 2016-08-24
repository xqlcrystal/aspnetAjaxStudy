///<reference name=MicrosoftAjax.js />

Type.registerNamespace("CustomComponets");

CustomComponets.GridViewRow = function CustomComponets$GridViewRow (associatedElement) {
    CustomComponets.GridViewRow.initializeBase(this, [associatedElement]);
}

function CustomComponets$GridViewRow$set_rowIndex(value) {

    if (this._rowIndexSet) {
        throw Error.invalidOperation("rowIndex property can't be set twice!");
    }
    this._rowIndexSet = true;
    this._rowIndex = value;
}

function CustomComponets$GridViewRow$get_rowIndex() {
    return this._rowIndex;
}

function CustomComponets$GridViewRow$onBubbleEvent(source,args) {
    var handled = false;

    if (args instanceof Sys.Preview.UI.CommandEventArgs) {
        var args2 = new CustomComponets.GridViewCommandEventArgs(this, source, args);
        this.raiseBubbleEvent(this, args2);
        handled = true;
    }

    return handled;
}

CustomComponets.GridViewRow.prototype = {
    set_rowIndex: CustomComponets$GridViewRow$set_rowIndex,
    get_rowIndex: CustomComponets$GridViewRow$get_rowIndex,
    onBubbleEvent: CustomComponets$GridViewRow$onBubbleEvent
}

CustomComponets.GridViewRow.descriptor = {
    properties: [{name:"rowIndex",type:Number}]
};

CustomComponets.GridViewRow.registerClass("CustomComponets.GridViewRow", Sys.UI.Control);