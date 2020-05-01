module.exports = function(app) {
	app.get('/login',function(req,res){
		app.app.controllers.index.login(app,req,res);
	});
	app.get('/sair',function(req,res){
		app.app.controllers.finalizar_sessão.finalizar_sessão(app,req,res);
	});
}