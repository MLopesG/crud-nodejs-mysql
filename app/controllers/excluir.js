module.exports.excluir=function(app,req,res){
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);

	if (req.query.id_manuntencao) { 
		var id_manuntencao=req.query;
	}else{
		res.redirect("/inicial")
		return;
	}
	Usuario.excluir_manuntenca(id_manuntencao,function(erro,result){ 
		res.redirect("/inicial") 
	});

}
module.exports.excluir1=function(app,req,res){
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);


	if (req.query.id_servico) { 
		var id_servico=req.query;
	}else{
		res.redirect("/inicial")
		return;
	}
	Usuario.excluir_servico_realizado(id_servico,function(erro,result){ 
		res.redirect("/inicial") 
	});

}
module.exports.excluir_veiculo=function(app,req,res){
	let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);

	if (req.query.id_veiculo) { 
		var id_veiculo=req.query;
	}else{
		res.redirect("/inicial")
		return;
	}
	Usuario.excluir_veiculo(id_veiculo,function(erro,result){ 
		res.redirect("/inicial") 
	});

}