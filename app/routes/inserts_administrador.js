module.exports = function(app) {
	app.post('/salvar/veiculo',function(req,res){
		app.app.controllers.inserts.insert_salva_veiculos(app,req,res);
	});
	app.post('/salvar/manuntencao',function(req,res){
		app.app.controllers.inserts.insert_salva_manuntencao(app,req,res);
	});
	app.post('/salvar/alteracao/veiculo',function(req,res){
		app.app.controllers.alterar.alterar_dados_veiculos(app,req,res);
	});
	app.post('/salvar/servico_realizado',function(req,res){
		app.app.controllers.inserts.insert_salva_servico_realizado(app,req,res);
	});
}