// fechar todos menos o home que é a frota

$('#conta').hide('slow');
	$('#servicos').hide('slow');
	$('#manuntencao').hide('slow');
	$('#cadastrar').hide('slow');
	$('#info').hide('slow');
	$('#form_manuntencao').hide('slow');
	$('#form_servico').hide('slow');


$('#btn_frota').click(function() {
	$('#Frota').slideToggle();
	$('#conta').hide('slow');
	$('#servicos').hide('slow');
	$('#manuntencao').hide('slow');
	$('#cadastrar').hide('slow');
	$('#info').hide('slow');
	$('#form_manuntencao').hide('slow');
	$('#form_servico').hide('slow');
});
$('#btn_conta').click(function() {
	$('#conta').slideToggle();
	$('#Frota').hide('slow');
	$('#servicos').hide('slow');
	$('#manuntencao').hide('slow');
	$('#cadastrar').hide('slow');
	$('#info').hide('slow');
	$('#form_manuntencao').hide('slow');
	$('#form_servico').hide('slow');
});
$('#btn_lista_serviço').click(function() {
	$('#servicos').slideToggle();
	$('#conta').hide('slow');
	$('#Frota').hide('slow');
	$('#manuntencao').hide('slow');
	$('#cadastrar').hide('slow');
	$('#info').hide('slow');
	$('#form_manuntencao').hide('slow');
	$('#form_servico').hide('slow');
});
$('#btn_cadastrar').click(function() {
	$('#cadastrar').slideToggle();
	$('#servicos').hide('slow');
	$('#conta').hide('slow');
	$('#Frota').hide('slow');
	$('#info').hide('slow');
	$('#manuntencao').hide('slow');
	$('#form_manuntencao').hide('slow');
	$('#form_servico').hide('slow');
	
});
$('#btn_lista_manuntencao').click(function() {
	$('#manuntencao').slideToggle();
	$('#conta').hide('slow');
	$('#servicos').hide('slow');
	$('#Frota').hide('slow');
	$('#cadastrar').hide('slow');
	$('#info').hide('slow');
	$('#form_manuntencao').hide('slow');
	$('#form_servico').hide('slow');
});

$('#btn_manuntencao').click(function() {
	$('#form_manuntencao').slideToggle();
	$('#form_servico').hide('slow');
	$('#conta').hide('slow');
	$('#servicos').hide('slow');
	$('#Frota').hide('slow');
	$('#cadastrar').hide('slow');
	$('#info').hide('slow');
	$('#manuntencao').hide('slow');
});
$('#btn_serviço').click(function() {
	$('#form_servico').slideToggle();
	$('#form_manuntencao').hide('slow');
	$('#conta').hide('slow');
	$('#servicos').hide('slow');
	$('#Frota').hide('slow');
	$('#cadastrar').hide('slow');
	$('#info').hide('slow');
	$('#manuntencao').hide('slow');
});


