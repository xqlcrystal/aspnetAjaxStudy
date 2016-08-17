///<reference name="MicrosoftAjax.js"/>

Type.registerNamespace("Shopping");

Shopping.ShoppingCartItem = function Shopping$ShoppingCartItem(id, name, price) {
    this._id = id;
    this._name = name;
    this._pirce = price;
}

function Shopping$ShoppingCartItem$get_id() {
    return this._id;
}

function Shopping$ShoppingCartItem$get_name() {
    return this._name;
}


function Shopping$ShoppingCartItem$get_price() {
    return this._price;
}

Shopping.ShoppingCartItem.prototype = {
    get_id: Shopping$ShoppingCartItem$get_id,
    get_name: Shopping$ShoppingCartItem$get_name,
    get_price: Shopping$ShoppingCartItem$get_price
}

Shopping.ShoppingCartItem.registerClass("Shopping.ShoppingCartItem");



//Shopping.ShoppingCart
Shopping.ShoppingCart = function Shopping$ShoppingCart() {

}

function Shopping$ShoppingCart$get_events() {
    if (!this._events) {
        this._events = new Sys.EventHandlerList();
    }

    return this._events;
}

function Shopping$ShoppingCart$initialize() {
    this._shoppingCartItems = {};
    this.onShoppingCartInitialized(Sys.EventArgs.Empty);
}

function Shopping$ShoppingCart$onShoppingCartInitialized(e) {
    var handler = this.get_events().gethandler();
    if (handler) {
        handler(this, e);
    }
}

function Shopping$ShoppingCart$get_shoppingCartItems() {
    return this._shoppingCartItems;
}

function Shopping$ShoppingCart$addShoppingCartItem(shoppingCartItem) {
    var cartItems = this.get_shoppingCartItems();
    var cartItemId = shoppingCartItem.get_id();
    if (cartItems[cartItemId]) {
        
    }
    else {
        this._shoppingCartItems[cartItemId] = shoppingCartItem;
    }
}

Shopping.ShoppingCart.prototype = {
    get_events:Shopping$ShoppingCart$get_events,
    initialize: Shopping$ShoppingCart$initialize,
    onShoppingCartInitialized:Shopping$ShoppingCart$onShoppingCartInitialized,
    get_shoppingCartItems: Shopping$ShoppingCart$get_shoppingCartItems,
    addShoppingCartItem: Shopping$ShoppingCart$addShoppingCartItem
}

Shopping.ShoppingCart.registerClass("Shopping.ShoppingCart");


Shopping.ShoppingCartItemAddingEventArgs = function Shopping$ShoppingCartItemAddingEventArgs(shoppingCartItem) {
    Shopping.ShoppingCartItemAddingEventArgs.initializeBase(this);
    this._shoppingCartItem = shoppingCartItem;
}

function Shopping$ShoppingCartItemAddingEventArgs$get_shoppingCartItem() {
    return this._shoppingCartItem;
}

Shopping.ShoppingCartItemAddingEventArgs.prototype = {
    get_shoppingCartItem: Shopping$ShoppingCartItemAddingEventArgs$get_shoppingCartItem
}

Shopping.ShoppingCartItemAddingEventArgs.registerClass("Shopping.ShoppingCartItemAddingEventArgs", Sys.CancelEventArgs);
   


//ShoppingCartItemAddedEventArgs

Shopping.ShoppingCartItemAddedEventArgs = function Shopping$ShoppingCartItemAddedEventArgs(shoppingCartItem,exception) {
    Shopping.ShoppingCartItemAddedEventArgs.initializeBase(this);
    this._shoppingCartItem = shoppingCartItem;
    this._exception = exception;
    this._exceptionHandled = false;
}

function Shopping$ShoppingCartItemAddedEventArgs$get_shoppingCartItem() {
    return this._shoppingCartItem;
}

function Shopping$ShoppingCartItemAddedEventArgs$get_exception() {
    return this._exception;
}

function Shopping$ShoppingCartItemAddedEventArgs$get_exceptionHandled() {
    return !this._exception || this._exceptionHandled;
}

function Shopping$ShoppingCartItemAddedEventArgs$set_exceptionHandled(value) {
    this._exceptionHandled = value;
}

Shopping.ShoppingCartItemAddedEventArgs.prototype = {
    get_shoppingCartItem: Shopping$ShoppingCartItemAddedEventArgs$get_shoppingCartItem,
    get_exception: Shopping$ShoppingCartItemAddedEventArgs$get_exception,
    get_exceptionHandled: Shopping$ShoppingCartItemAddedEventArgs$get_exceptionHandled,
    set_exceptionHandled: Shopping$ShoppingCartItemAddedEventArgs$set_exceptionHandled
}

Shopping.ShoppingCartItemAddedEventArgs.registerClass("Shopping.ShoppingCartItemAddedEventArgs", Sys.EventArgs);



if (typeof("Sys")!=='undefined') {
    Sys.Application.notifyScriptLoaded();
}