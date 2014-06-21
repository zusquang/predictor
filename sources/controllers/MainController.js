var EventEmitter = require( "events" ).EventEmitter;

var predictionService = require( "../services/PredictService.js" );
// ---------------------------------------------------------- //
// ---------------------------------------------------------- //
// Create an instance of our event emitter.
var MainController = new EventEmitter();
MainController.handle = function( request, response ){
    var patterns = {
        get: new RegExp( "predictions/get/([^/]+)", "i" ),
    };

    var restUri = request.url.replace( new RegExp( "^/|/$", "g" ), "" );

    for (var patternKey in patterns){
        // Try to match the pattern against the URL.
        if ( match = restUri.match( patterns[ patternKey ] ) ){
            var apiArguments = [function( apiResponse ){
                if (apiResponse){
                    // The request was successful - announce the data event.
                    MainController.emit( "data", apiResponse );
                } else {
                    // The request was not successful - announce the error event.
                    MainController.emit( "error", "404" );
                }
            }];

            if (match.length > 1){
                apiArguments.unshift( match[ 1 ] );
            }

            predictionService[ patternKey ].apply( predictionService, apiArguments );
            return;
        }
    }
    MainController.emit( "error", "500" );
};
// Expose the controller / event emitter. 
module.exports = MainController;