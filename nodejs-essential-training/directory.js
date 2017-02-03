var fs = require('fs');

if (fs.existsSync("another")) {
    console.log("Directory already there");
} else {
    fs.mkdir('another', function(err) {
        if (err) throw err;

        console.log('Directory created');
    }); // mkdirSync()
}