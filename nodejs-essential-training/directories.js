var fs = require('fs');

// fs.renameSync('./another/logs', './logs');
// console.log("logs folder has been removed");

// fs.rmdir('./another', function(err) {
//     if (err) throw err;
//     console.log("Another directory removed");
// });

fs.readdirSync('./logs').forEach(function(fileName) {
    fs.unlink('./logs/' + fileName);
});

fs.rmdir('./logs', function(err) {
    if (err) throw err;
    console.log("Logs directory removed");
});