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
    var handler = this.get_events().getHandler("shoppingCartInitialized");
    if (handler) {
        handler(this, e);
    }
}

function Shopping$ShoppingCart$get_shoppingCartItems() {
    return this._shoppingCartItems;
}

function Shopping$ShoppingCart$addShoppingCartItem(shoppingCartItem) {

    var el = new Shopping.ShoppingCartItemAddingEventArgs(shoppingCartItem);
    this.onShoppingCartItemAdding(el);

    if (!el.get_cancel()) {
        var exception = null;
        var cartItems = this.get_shoppingCartItems();
        var cartItemId = shoppingCartItem.get_id();
        if (cartItems[cartItemId]) {
            exception = Error.duplicateItem(
                "Duplicate shopping cart item.",
            {
                name:shoppingCartItem.get_name()

            }
        );

        }
        else {
            this._shoppingCartItems[cartItemId] = shoppingCartItem;
        }

        var e2 = new Shopping.ShoppingCartItemAddedEventArgs(shoppingCartItem, exception);
        this.onShoppingCartItemAdded(e2);

        if (!e2.get_exceptionHandled()) {
            throw exception;
        }
            
    }

   
}


function Shopping$ShoppingCart$onShoppingCartItemAdding(e) {
    var handler = this.get_events().getHandler("shoppingCartItemAdding");
    if (handler) {
        handler(this, e);
    }
}


function Shopping$ShoppingCart$onShoppingCartItemAdded(e) {
    var handler = this.get_events().getHandler("shoppingCartItemAdded");
    if (handler) {
        handler(this, e);
    }
}

function Shopping$ShoppingCart$add_shoppingCartInitialized(handler) {
    this.get_events().addHandler("shoppingCartInitialized", handler)
}

function Shopping$ShoppingCart$add_shoppingCartItemAdding(handler) {
    this.get_events().addHandler("shoppingCartItemAdding", handler)
}


function Shopping$ShoppingCart$add_shoppingCartItemAdded(handler) {
    this.get_events().addHandler("shoppingCartItemAdded", handler)
}

function Shopping$ShoppingCart$remove_shoppingCartInitialized(handler) {
    this.get_events().removeHandler("shoppingCartInitialized", handler)
}

function Shopping$ShoppingCart$remove_shoppingCartItemAdding(handler) {
    this.get_events().removeHandler("shoppingCartItemAdding", handler)
}

function Shopping$ShoppingCart$remove_shoppingCartItemAdded(handler) {
    this.get_events().removeHandler("shoppingCartItemAdded", handler)
}

Shopping.ShoppingCart.prototype = {
    get_events:Shopping$ShoppingCart$get_events,
    initialize: Shopping$ShoppingCart$initialize,     
    get_shoppingCartItems: Shopping$ShoppingCart$get_shoppingCartItems,
    addShoppingCartItem: Shopping$ShoppingCart$addShoppingCartItem,
    onShoppingCartInitialized: Shopping$ShoppingCart$onShoppingCartInitialized,
    onShoppingCartItemAdding:Shopping$ShoppingCart$onShoppingCartItemAdding,
    onShoppingCartItemAdded: Shopping$ShoppingCart$onShoppingCartItemAdded,
    add_shoppingCartInitialized: Shopping$ShoppingCart$add_shoppingCartInitialized,
    add_shoppingCartItemAdding: Shopping$ShoppingCart$add_shoppingCartItemAdding,
    add_shoppingCartItemAdded: Shopping$ShoppingCart$add_shoppingCartItemAdded,
    remove_shoppingCartInitialized: Shopping$ShoppingCart$remove_shoppingCartInitialized,
    remove_shoppingCartItemAdding: Shopping$ShoppingCart$remove_shoppingCartItemAdding,
    remove_shoppingCartItemAdded: Shopping$ShoppingCart$remove_shoppingCartItemAdded
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