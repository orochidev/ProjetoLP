module main;

import projeto, estado, comando;
import std.stdio, std.json, jsonizer.tojson, jsonizer.fromjson, jsonizer.jsonize;

int main(string[] args){
	Projeto.load("inimigos.txt");

	Projeto projeto = Projeto.getInstance();

	writeln(projeto.descricaoInicial);
	Estado estadoAtual = projeto.estados[0];
	int teste = 1;
	while(teste == 1){
		writeln(estadoAtual.descricao);
		Comando[] comandos = estadoAtual.comandos;

		for(int i = 0; i < comandos.length; i++){
			writeln("(", i, ")", comandos[i].descricao);
		}
		int op = -1;

		while(op < 0 || op > comandos.length - 1){
			writeln("Selecione sua opcao: ");
			readf(" %d", &op);
			if(op < 0 || op > comandos.length - 1){
				writeln("Opcao invalida");
			}
		}
		estadoAtual = projeto.searchEstadoById(comandos[op].resultado);
	}

	return 0;
}
