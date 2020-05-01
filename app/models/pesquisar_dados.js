class pesquisar_dados{
	constructor(connection){
		this.connection = connection;
	}
	buscar_login_usuario(a,b,callback){
		this.connection.query("select*from empresa INNER JOIN cidade ON empresa.id_cidade = cidade.id_cidade where responsavel_empresa='"+a+"' and senha_empresa ='"+b+"'",callback);
	}
	buscar_veiculos(c,callback){
			this.connection.query("select*from veiculo INNER join empresa INNER JOIN tipo_veicullo on veiculo.id_empresa = empresa.id_empresa and veiculo.id_tipo_veiculo = tipo_veicullo.id_tipo_veiculo = '"+c+"' order by id_veiculo desc limit 10 ",callback);	
	}
	cidades(callback){
		this.connection.query('select*from cidade',callback);
	}
	tipo_veiculo(callback){
		this.connection.query('select*from tipo_veicullo',callback);
	}
	buscar_servicos(d,callback){
			this.connection.query("select*from contrato INNER JOIN vendedor INNER JOIN cliente  INNER JOIN	servico INNER JOIN veiculo  INNER JOIN empresa on veiculo.id_empresa = empresa.id_empresa and contrato.id_veiculo = veiculo.id_veiculo and  contrato.id_servico = servico.id_servico  and contrato.id_cliente = cliente.id_cliente and contrato.id_vendedor = vendedor.id_vendedor where empresa.id_empresa = '"+d+"'",callback);	
	}
	buscar_manuntenca(e,callback){
			this.connection.query("select*from manuntencao INNER JOIN veiculo INNER JOIN empresa on manuntencao.id_veiculo = veiculo.id_veiculo and veiculo.id_empresa = empresa.id_empresa where empresa.id_empresa  = '"+e+"'",callback);	
	}
	excluir_manuntenca(f,callback){
		this.connection.query("delete from 	manuntencao where id_manuntencao='"+f.id_manuntencao+"'",callback);
	}
	excluir_servico_realizado(g,callback){
		this.connection.query("delete from servico where id_servico='"+g.id_servico+"' ",callback);
	}
	excluir_veiculo(h,callback){
		this.connection.query("delete from veiculo where id_veiculo='"+h.id_veiculo+"' ",callback);
	}
	update_dados_administrador(empresa,id_empresa,callback){
	this.connection.query("UPDATE empresa set? WHERE id_empresa ='"+id_empresa+"'",empresa,callback);	
	}
	update_dados_veiculo(veiculo,id_veiculo,callback){
	this.connection.query("UPDATE veiculo set? WHERE id_veiculo ='"+id_veiculo+"'",veiculo,callback);	
	}
	cadastrar_veiculos(veiculo,callback){
		this.connection.query('insert into veiculo set?',veiculo,callback);
	}
	cadastrar_manuntencao_veiculos(veiculo,callback){
		this.connection.query('insert into manuntencao set?',veiculo,callback);
	}
	cadastrar_servico_veiculos(veiculo,callback){
		this.connection.query('insert into servico set?',veiculo,callback);
	}
}
module.exports = function() {
	return pesquisar_dados;
}
