var fs = require('fs');

// Sync
var files = fs.readdirSync('./lib');

console.log(files);

// Async
fs.readdir('./lib', function(err, files) {
    if (err) {
        throw err;
    }

    console.log(files);
});

console.log("Reading files...");