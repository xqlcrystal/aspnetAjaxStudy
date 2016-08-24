///<reference name="MicrosoftAjax.js"/>
///<reference name="PreviewScript.debug.js"/>

Type.registerNamespace("CustomComponents");

CustomComponents.CustomTable = function CustomComponents$CustomTable(associatedElement) {
    CustomComponents.CustomTable.initializeBase(this, [associatedElement]);
}

function CustomComponents$CustomTable$get_dataSource() {
    return this._dadaSource;
}

function CustomComponents$CustomTable$set_dataSource(value) {
    this._dataSource = value;
}

function CustomComponents$CustomTable$set_dataFieldNames(value) {
    this._dataFieldNames = value;
}

function CustomComponents$CustomTable$get_dataFieldNames() {
    return this._dataFieldNames;
}

function CustomComponents$CustomTable$databind() {
    var isArray = true;
    if (this._dataSource && Sys.Preview.Data.IData.isImplementedBy(this._dataSource)) {
        isArray = false;
    } else if (Array.isInstanceOfType(this._dataSource)) {
        throw Error.createError("Unknown");
    }

    var sb = new Sys.StringBuilder('<table align="center" id="products" ');
    var length = isArray ? this._dataSource.length : this._dataSource.get_length();
    for(var i=0;i<length;i++){
        var dataitme=isArray?this._dadaSource[i]:this._dataSource.getRow(i);
        if(i==0){
            sb.appendLine("<tr>");
            for (var c in this._dataFieldNames) {
                sb.append("<td>");
                sb.append(this._dataFieldNames[c]);
                sb.append("</td>");

            }
        sb.appendLine("</tr>");
        }
        sb.append("<tr>");

        for (var j in this._dataFieldNames) {
            var dataFieldName = this._dataFieldNames[j];
            var dataFieldValue = Sys.Preview.TypeDescriptor.getProperty(dataitme, dataFieldName, null);
            sb.append("<td>");
            sb.append(dataFieldValue);
            sb.append("</td>");
        }

        sb.append("</tr>")

    }

    sb.appendLine("</table>");

    this.get_element().innerHTML = sb.toString();

}

CustomComponents.CustomTable.prototype = {
    get_dataSource: CustomComponents$CustomTable$get_dataSource,
    set_dataSource: CustomComponents$CustomTable$set_dataSource,
    set_dataFieldNames:CustomComponents$CustomTable$set_dataFieldNames,
    get_dataFieldNames:CustomComponents$CustomTable$get_dataFieldNames,
databind:CustomComponents$CustomTable$databind
}

CustomComponents.CustomTable.registerClass("CustomComponents.CustomTable", Sys.UI.Control);