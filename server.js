var env = require('./config.json');
var sys = require( "sys" );
var http = require( "http" );
var redisManager = require('redis-client-manager')
var redisClient = redisManager.getClient();
 
// Include the Controller layer.
var main = require("./sources/controllers/MainController.js");

// Create an instance of the HTTP server.
var server = http.createServer(
    function( request, response ){
        main.once("data",
            function( data ){
                // Pushing to predictions queue!
                redisClient.lpush( "predictions", "The best potential area " + data[0]['ID'] + " - " + new Date());

                // Set the 200-OK header.
                response.writeHead(
                    200, { "Content-Type": "text/plain;charset=utf-8" }
                );

                response.write( JSON.stringify( data ) );
                // Close the request.
                response.end();
            }
        );
 
        main.once("error",
            function( errorType ){
                response.writeHead(
                    errorType, { "Content-Type": "text/plain;charset=utf-8" }
                );
                // Close the request.
                response.end();
            }
        );
        main.handle( request, response );
    }
);
 
server.listen(env.PORT);
// Server debug
sys.puts( "Server is running on 8000" );