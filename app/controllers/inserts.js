module.exports.insert_salva_veiculos = function(app,req,res) {
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);

	let veiculos = req.body;
	console.log(veiculos);
	Usuario.cadastrar_veiculos(veiculos,function(error,result){
		res.redirect('/inicial');
	})
}
module.exports.insert_salva_manuntencao = function(app,req,res) {
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);

	let veiculos = req.body;

	Usuario.cadastrar_manuntencao_veiculos(veiculos,function(error,result){
		res.redirect('/inicial');
	})
}
module.exports.insert_salva_servico_realizado = function(app,req,res) {
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);

	let veiculos = req.body;

	Usuario.cadastrar_servico_veiculos(veiculos,function(error,result){
		res.redirect('/inicial');
	})
}

