module.exports = function(app) {
	app.get('/inicial',function(req,res) {
		app.app.controllers.index.admin(app,req,res);
	})
	app.get('/excluir', function(req, res){
		app.app.controllers.excluir.excluir(app,req,res);
  });
  app.get('/excluir/veiculo', function(req, res){
		app.app.controllers.excluir.excluir_veiculo(app,req,res);
  });
  app.get('/excluir1', function(req, res){
		app.app.controllers.excluir.excluir1(app,req,res);
  });
   app.post('/alterar', function(req, res){
		app.app.controllers.alterar.alterar_dados_administrador(app,req,res);
  });
   app.post('/alterar/empresa', function(req, res){
		app.app.controllers.alterar.alterar_dados_administrador_empresa(app,req,res);
  });
}