module.exports = function(app) {
	app.get('/',function(req,res){
		app.app.controllers.index.não_encontrado(app,req,res);
	});
	app.post('/logar/usuario', function(req,res){
		app.app.controllers.index.logar(app,req,res);
	});
}