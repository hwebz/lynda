var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var mongo = require('mongodb').MongoClient;
var mongoose = require('mongoose');

var auth = require('./controllers/auth');
var message = require('./controllers/message');
var checkAuthenticated = require('./services/checkAuthenticated');
var cors = require('./services/cors');

var database;
//var Message = mongoose.model('Message', {
//    msg: String
//});

// Middleware
app.use(bodyParser.json());

app.use(cors);

// Request
app.post('/api/message', checkAuthenticated, message.post);

app.get('/api/message', message.get);

app.post('/auth/register', auth.register);

app.post('/auth/login', auth.login);

//function GetMessages(req, res) {
//    Message.find({}).exec(function(err, result) {
//        res.send(result);
//    });
//}

// Connection
mongoose.connect("mongodb://localhost:27017/test", function(err, db) {
   if (!err) {
       console.log("we are connected to mongodb");
       database = db;
       // db.collection('messages').insertOne({'msg': 'test'});
       // GetMessages();
   } 
});

var server = app.listen(5000, function() {
    console.log('listening on port ', server.address().port);
});