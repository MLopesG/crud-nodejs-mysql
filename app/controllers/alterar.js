
module.exports.alterar_dados_administrador=function(app,req,res){
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);

	let informacoes = req.body;

	Usuario.update_dados_administrador(informacoes,informacoes.id_empresa,function(erro,result){ 
		res.redirect("/inicial") 
	});

}

module.exports.alterar_dados_veiculos=function(app,req,res){
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);

	let informacoes = req.body;

	console.log(informacoes);

	Usuario.update_dados_veiculo(informacoes,informacoes.id_veiculo,function(error,result){
		res.redirect('/inicial');
	})

}
