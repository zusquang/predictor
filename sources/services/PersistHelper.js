var persist = require("node-persist"),
    type = persist.type,
    util = require("util"),
    events = require('events');

function PersistHelper(options) {
    this.options = options;
    this.connection = null;
};

util.inherits(PersistHelper, events.EventEmitter);

PersistHelper.prototype.init = function(){
    var that = this;
    persist.connect(function(error, connection) {
        if(error) {
            that.emit("connect_fail", error);  
        } else {
            that.connection = connection;
            that.emit("connect_success", connection);
        }
    })
}

module.exports = PersistHelper;