var mongoose = require('mongoose');
var userSchame = new mongoose.Schema({
    username:{type:String,unique:true},
    password:{type:String},
    firstname:String,
    lastname:String
});

var User = mongoose.model('myuser',userSchame);
module.exports = User;