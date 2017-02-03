var fs = require('fs');

fs.renameSync('sample.md', 'other.txt');

console.log("Other txt file renamed");

fs.rename('./JimiDARK.md', './another/JD.md', function(err) {
    if (err) {
        throw err;
    } else {
        console.log("JimiDARK.md moved successfully");
    }
})