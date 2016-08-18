///<reference name="MicrosoftAjax.js"/>


Type.registerNamespace("Delegates");

Delegates.Mover = function Delegates$Mover(containerId) {
    var container = $get(containerId);

    Delegates.Mover.incrementMoversCount();

    if (!container) {
        container = document.createElement("div");
        this._containerId = container.id = containerId;
        container.style.position = "absolute";
        document.body.insertBefore(container, document.forms[0]);

        $addHandler(container,
            {
                mousedown:this.mousedowncb
            },
            this
            );
    }
}

function Delegates$Mover$invokeAddContentDelegate() {

}

function Delegates$Mover$mousedowncb() {

}

function Delegates$Mover$mouseupcb() {

}

function Delegates$Mover$mousemovecb() {

}

Delegates.Mover.prototype = {
    addContentDelegate: Delegates$Mover$invokeAddContentDelegate,
    mousedowncb: Delegates$Mover$mousedowncb,
    mouseupcb: Delegates$Mover$mouseupcb,
    mousemovecb: Delegates$Mover$mousemovecb
}

Delegates.Mover.incrementMoversCount = function () {
    if (typeof (this.moversCount) == "undefined") {
        this.moversCount = 0;
    }
    this.moversCount++;
}

Delegates.Mover.get_moversCount() = function () {
    return this.moversCount;
}

Delegates.Mover.registerClass("Delegates.Mover");