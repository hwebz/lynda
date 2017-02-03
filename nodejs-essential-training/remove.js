var fs = require('fs');

try {
    fs.unlinkSync('./another/JD.md');
} catch (err) {
    console.log(err);
}

fs.unlink('other.txt', function(err) {
    if (err) console.log(err);
    else console.log("other.txt removed");
});