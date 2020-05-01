const express = require('express');
const consign = require('consign');	
const bodyParser = require('body-parser');
const expressValidator = require('express-validator'); 
const session = require('express-session');

const app = express();



app.set('view engine','ejs'); 
app.set('views','./app/views'); 




app.use(bodyParser.urlencoded({extended:true}));
app.use(expressValidator());
app.use(session({
  secret: 'sshhhhh',
  saveUninitialized: true,
   resave: true,
  saveUninitialized: true,
   cookie: { _expires:new Date() ,originalMaxAge: 1000000}
}));


app.use(express.static('app/public'));


consign() 
.include('app/routes')
.then('config/connect.js')
.then('app/controllers')
.then('app/models') 
.into(app); 
module.exports = app;  

