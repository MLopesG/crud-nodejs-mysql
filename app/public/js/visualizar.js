var mensagem = document.querySelector('#myModal');
var cancelar = document.querySelector('#cancelar');
var span = document.getElementsByClassName("close")[0];



function visualizar(id_veiculo,id_empresa,empresa,id,foto,nome,categoria,marca,ano,capacidade) {
	document.querySelector('#foto').value = foto;
	document.querySelector('#item').value =  nome;
	document.querySelector('#item_1').value = categoria;
	document.querySelector('#item_2').value =  marca;
	document.querySelector('#item_3').value = ano;
	document.querySelector('#item_4').value =  capacidade;
	document.querySelector('#item_5').value =  id;
  document.querySelector('#item_6').value =  empresa;
  document.querySelector('#item_7').value =  id_empresa;
  document.querySelector('#item_8').value =  id_veiculo;


	var mensagem = document.querySelector('#myModal');
  mensagem.style.display = 'flex';

}

span.onclick = function() { 
    mensagem.style.display = "none";
}
cancelar.onclick = function() { 
    mensagem.style.display = "none";
}

function excluir_manuntencao(param) {
  if (confirm("Deseja excluir essa manuntenção?")) {
    location.href="/excluir?id_manuntencao="+ param;
  }else{
  	alert('Opção cancelada');
  }
}
function excluir_servico(param) {
  if (confirm("Deseja excluir essa serviço realizado?")) {
    location.href="/excluir1?id_servico="+ param;
  }else{
  	alert('Opção cancelada');
  }
}
function excluir_veiculo(param) {
  if (confirm("Deseja excluir Veiculo?")) {
    location.href="/excluir/veiculo?id_veiculo="+ param;
  }else{
    alert('Opção cancelada');
  }
}

var funcao_execucao =  setInterval(horario_atual,1000);

function horario_atual(){
	let data_atual = new Date();
	document.querySelector('#horario').innerHTML = "Horário Atual:"  + '<b>'+data_atual.toLocaleTimeString()+'</b>';
}
