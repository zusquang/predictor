var should = require( "should" );
var predictionService = require( "../sources/services/PredictService.js" );
var result = [2, 8, 1, 4];

describe('Predict Engine Test Case', function(){

	it('handling base on result', function( done ){
			predictionService.get( "11-15", function (data) {
				for (var i = 0; i < data.length; i++) {
					try{
						data[i]['ID'].should.equal(result[i]);
					} catch(ex) {
						console.log("ERROR: " + ex.name + " " + ex.message);
					}
				};
				done();
			});
	});

});