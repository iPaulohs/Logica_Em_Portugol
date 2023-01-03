programa
{
//Declaração de variáveis de escopo global
	real litrosDeCombustivelAbastecidos
	real quilometrosRodados
	real litrosDeCombustivelControle
	real quilometrosRodadosControle
	real consumoMedio
	//Main
	funcao inicio()
	{
	escreva("Olá! Este é um programa para calcular o consumo médio e a automomia de um veículo. As instruções serão dadas a seguir.\n")
	lerDadosLitrosAbastecidos()
	lerDadosQuilometrosPercorridos()
	calculaConsumo()
	escreva("Agora vamos calcular a autonomia, em Km, do veículo.\n")
	lerDadosTanque()
	
	}
	//Função para ler os dados de combustivel do usuario
	funcao lerDadosLitrosAbastecidos()
	{
		escreva("Informe com quantos litros de combustível você abasteceu o seu veículo: \n")
		leia(litrosDeCombustivelControle)
		validacaolitrosDeCombustivel()
	}
	//Função para ler os dados de quilometros do usuario
	funcao lerDadosQuilometrosPercorridos()
	{
		escreva("Informe quantos quilometros você percorreu com o combustível abastecido: \n")
		leia(quilometrosRodadosControle)
		validacaoquilometrosRodados()
	}
	
	//Função para validar os dados declarados pelo usuario
	funcao validacaolitrosDeCombustivel()
	{
		se(litrosDeCombustivelControle <= 0)
		{
			escreva("Você precisa digitar um valor maior do que 0!\n")
			lerDadosLitrosAbastecidos()
		}
		senao
		{
			litrosDeCombustivelAbastecidos = litrosDeCombustivelControle
		}
	}
	//Função para validar os dados declarados pelo usuario
	funcao validacaoquilometrosRodados(){
		se(quilometrosRodadosControle <= 0)
		{
			escreva("Você precisa digitar um valor maior do que 0!\n")
			lerDadosQuilometrosPercorridos()		
		}
		senao
		{
			quilometrosRodados = quilometrosRodadosControle
		}
	}
	funcao calculaConsumo()
	{
		consumoMedio =  litrosDeCombustivelAbastecidos / quilometrosRodados
		escreva("O consumo do seu veículo é de " + consumoMedio + " l/Km.\n")
	}

	//Cálculo de autonomia
	real capacidadeDoTanque
	real capacidadeDoTanqueControle
	//Função para ler a capacidade do tanque, em litros
	funcao lerDadosTanque()
	{
		escreva("Escreva qual é a capacidade máxima do tanque do seu carro: \n")
		leia(capacidadeDoTanqueControle)
		validacaoTanque()
	}
	//Função para validar os dados digitados pelo usuário
	funcao validacaoTanque()
	{
		se(capacidadeDoTanqueControle <= 0)
		{
			escreva("Você precisa digitar um valor maior do que 0!\n")
			lerDadosTanque()
		}
		senao
		{
			capacidadeDoTanque = capacidadeDoTanqueControle
			calculoDeAutonomiaTotalDoVeiculo()
		}
	}
	//Função para calcular a autonomia máxima e informar ao usuário
	funcao calculoDeAutonomiaTotalDoVeiculo()
	{
		real autonomiaDoVeiculo = consumoMedio * capacidadeDoTanque
		escreva("A autonomia total do veículo é de " + autonomiaDoVeiculo + "Km.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 52; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
