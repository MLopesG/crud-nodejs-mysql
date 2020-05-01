let mysql = require('mysql'); 

let acessar_banco = function() {
	return mysql.createConnection({ 
			host:'localhost', 
			user:'root', 
			password:'', 
			database:'grenfro'
		});
}

module.exports = function(){
	console.log('Banco Gen-fro Conectado !!'); 
	return acessar_banco; 
 }