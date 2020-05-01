module.exports.finalizar_sessão = function(app, req, res) {
  sess = req.session;
  sess.destroy(function(err) {
    delete sess;
    req.session = null;
    res.redirect('/inicial');
  });
};
