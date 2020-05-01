var session;

module.exports.não_encontrado = function(app, req, res) {

  session = req.session;

  if (session.administrador && session.senha) {
    res.redirect('/inicial');
  } else {
    res.redirect('/login');
  }
}

module.exports.login = function(app, req, res) {
  res.render('login', {
    validacao: {},
    login: {}
  });
}

module.exports.logar = function(app, req, res) {
  session = req.session;
  let user = req.body;

  req.assert('administrador', 'Campo administrador vazio..').notEmpty();
  req.assert('senha', 'Campo senha vazio ..').notEmpty();

  var erros = req.validationErrors();
  if (erros) {
    res.render('login', {
      validacao: erros,
      login: user
    });
    return;
  }
  session.administrador = req.body.administrador;
  session.senha = req.body.senha;
  res.redirect('/inicial');
};

module.exports.admin = function(app, req, res) {
  session = req.session;

  let connection = app.config.connect();
  let Usuario = new app.app.models.pesquisar_dados(connection);
  Usuario.buscar_login_usuario(session.administrador, session.senha, function(error, informacoes) {
    if (informacoes.length == 0) {
      res.render('login', {
        Titulo: 'Acessar conta Gen-fro',
        validacao: [{
          msg: 'Administrador ou senha não encontrado, tente novamente!!'
        }],
        login: session
      });
      return;
    }
    informacoes.forEach(function(dados_empresa) {
      Usuario.buscar_veiculos(dados_empresa.id_empresa, function(error, veiculos) {
        Usuario.cidades(function(error, cidades) {
          Usuario.buscar_servicos(dados_empresa.id_empresa, function(error, servicos) {
            Usuario.tipo_veiculo(function(error, tipo_veiculo) {
              Usuario.buscar_manuntenca(dados_empresa.id_empresa, function(error, manuntencao) {
                res.render('index', {
                  Titulo: 'Painel administrativo Gen-fro',
                  nome_adminstrador: dados_empresa.responsavel_empresa,
                  veiculos_frota: veiculos,
                  servicos: servicos,
                  manuntencao: manuntencao,
                  dados_adminstrador: informacoes,
                  id_empresa: dados_empresa.id_empresa,
                  foto: dados_empresa.logo_empresa,
                  empresa: dados_empresa.nome_empresa,
                  cidades: cidades,
                  tipo_veiculo: tipo_veiculo
                });
              });
            })
          });
        });
      });
    });
  })
}