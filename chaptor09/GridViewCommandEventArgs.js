///<reference name="MicrosoftAjax.js"/>

Type.registerNamespace("CustomComponets");

CustomComponets.GridViewCommandEventArgs = function CustomComponets$GridViewCommandEventArgs(row,source,args) {

    CustomComponets.GridViewCommandEventArgs.initializeBase(this, [args.get_commandName(), args.get_argument()]);
    this._comandSource = source;
    this._row = row;
}

function CustomComponets$GridViewCommandEventArgs$get_commandSource() {
    return this._commandSource;
}

function CustomComponets$GridViewCommandEventArgs$get_row() {
    return this._row;
}


CustomComponets.GridViewCommandEventArgs.prototype = {
    get_commandSource: CustomComponets$GridViewCommandEventArgs$get_commandSource,
    get_row: CustomComponets$GridViewCommandEventArgs$get_row
}

CustomComponets.GridViewCommandEventArgs.registerClass("CustomComponets.GridViewCommandEventArgs", Sys.Preview.UI.CommandEventArgs);

