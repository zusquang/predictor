# Prepare predict data
	Import file grabtaxi.sql which is contained in ./grabdata directory to MySQL.

# View dump data
	Start server.js file with node command -: node server.js
	Call request: predictions/get/[range]

	**range: the range of time and specified is hour.
	Example: predictions/get/11-15 - predict data between 11hAM - 15hPM in the current day.

# Target
	Base on historical that storage on driver_logs table, the function will dump the predicted data for the current day.
	The system will read logs and deteminate the area have highest value (booking).
	From the potential area the system will detect number of drivers/taxi at this area.
	
# Test case for range 11-15
	Expect result is: [2, 8, 1, 4];
