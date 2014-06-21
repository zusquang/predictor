var PersistHelper = require( "./PersistHelper.js" );
var persist = new PersistHelper();

persist.on( "connect_success", function(connection) {
    var noop = function(){};
    exports.get = function( range, callback ){
        // Make sure a callback is defined.
        callback = ( callback || noop );
        // Retrieve data
        connection.runSql(  "select l.ID, " +  
                                "l.AREA, " +
                                "count(p.LOCATION) as BOOKED, " +  
                                "(select COUNT(*) from drivers ds where ds.CURRENT_LOCATION = p.LOCATION and CURRENT_STATUS = 1) as CURRENT_TAXI_AMOUNT " +
                            "from driver_logs d " +
                            "inner join passengers  p on p.ID = d.PASSENGER_ID " +
                            "inner join locations l on l.ID = p.LOCATION " +
                            "where hour(PICKUP_AT) >= ? and hour(PICKUP_AT) < ? " +
                            "group by p.LOCATION " +
                            "order by CURRENT_TAXI_AMOUNT ASC, BOOKED DESC", [range.split("-")[0],range.split("-")[1]], 
                            function(err, data){
                                if(!err)
                                    callback( data );
                            }
                         );
        return( this );
    };
});

persist.on( "connect_fail", function( error ){
    console.log( "log", error );
});

persist.init();

