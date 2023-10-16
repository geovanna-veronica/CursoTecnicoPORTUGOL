programa {
	
	cadeia nomes[10]
	inteiro cpfs[10], qntdDias[10] 
	real valorTotal[10]

	//Cadastro de Hospedes
	cadeia confirmar = "S", hospedes
	inteiro indiceHospede = 0, indiceCPF = 0, indiceDias = 0, indiceReal = 0, cpf, qntDias
	real totalIND, diaria = 100.00

	//Exibir Quartos
	cadeia quartos[10] = {"L","L","L","L","L","L","L","L","L","L"}

	//Atribuir Hospedes
	inteiro quartoDigitado
	inteiro hospedeDigitado = 0

	//Valor Total
	inteiro pagar = 0

	//Liberar Quarto
	

	funcao inicio() {

		inteiro escolhido

 		faca { 			

			escreva("\n1 – Cadastrar Hospedes;\n2 – Exibir Hospedes Cadastrados;\n3 – Exibir Quartos;\n4 – Atribuir Hospede a um quarto;\n5 – Reservar Área de Lazer;\n6 – Calcular Total a Pagar;\n0 – Sair;\n\nPorfavor, escolha uma das opções: ")
			leia(escolhido)

 			escolha (escolhido) {
 				
			caso 1: 
				cadastrarHospedes()
				pare

			caso 2:
				exibirHospedes()
				pare

			caso 3:
 				exibirQuartos()
 				pare

 			caso 4:
 				atribuirHospede()
 				pare

 			caso 5:
 				areaLazer()
 				pare

 			caso 6:
 				escreva("\nO valor total a ser pago e de: R$ ",totalAPagar(pagar),", volte sempre!\n")
 				pare
 			}


 		}enquanto(escolhido != 0)

	}

	funcao cadastrarHospedes(){
		
		se (indiceHospede > 9) {
			escreva("\nCADASTROS LOTADOS!\n")
		}

		escreva("Digite o nome do hóspede: ")
		leia(hospedes)
		nomes[indiceHospede] = hospedes
		indiceHospede ++

		escreva("Digite o CPF: ")
		leia(cpf)
		cpfs[indiceCPF] = cpf
		indiceCPF++

		escreva("Digite a quantidade de dias que ficará hóspedado: ")
		leia(qntDias)
		qntdDias[indiceDias] = qntDias
		indiceDias++

		totalIND = qntDias * diaria
		valorTotal[indiceReal] = totalIND
		indiceReal++

		escreva("As informações estão corretas? (S/N): ")
		leia(confirmar)

		se(confirmar == "S") {
			escreva("\nHóspede cadastrado com sucesso!\n")
			
		} senao {
			escreva("\nDigite novamente as informações.\n")
			indiceHospede--
			indiceCPF--
			indiceDias--
			indiceReal--
		}
	}

	funcao exibirHospedes() {
		para(inteiro i = 0; i < indiceHospede; i++) {
		escreva("\nÍndice: ", i, "\nNome: ", nomes[i], "\nCPF: ", cpfs[i], "\nQuantidade de dias: ", qntdDias[i],"\n")
		}
	}

	funcao exibirQuartos() {
		para(inteiro i = 0; i < 10; i++) {
			se(quartos[i] != "L") {
				escreva("\nQuarto: ", i, " - ", nomes[i], "\n")
			} senao  {
				escreva("\nQuarto: ", i , " - Livre\n")
			}	
		}
	}

	funcao atribuirHospede() {
		
		exibirHospedes()
		escreva("\nDigite o número do índice que o hóspede se encontra para poder atribuir: ")
		leia(hospedeDigitado)
		
		escreva("\nDigite o número do quarto (0 a 9) que deseja ocupar: ")
		leia(quartoDigitado)

		se(quartos[quartoDigitado] == "L") {
			escreva("\nHóspede atribuido ao quarto com sucesso!\n")
			quartos[quartoDigitado] = nomes[hospedeDigitado]
			exibirQuartos()
			
		} senao {
			escreva("\nQuarto já está ocupado!\n")
			
		}
	}

	funcao areaLazer() {
		caracter area
		inteiro indiceArea
		escreva("\nVocê pode ter acesso às nossas Àreas de Lazer!\n\nA - Academia = R$ 20,00\nS - Salão de Festas = R$ 50,00\nR - Restaurante = R$ 35,00\n\nPorfavor escolha: ")
		leia(area)
		escreva("\nQual índice você pertence abaixo?\n")
		exibirHospedes()
		escreva("\nÍndice: ")
		leia(indiceArea)
		
		escolha(area) {
			caso 'A': 
				inteiro academia = 20
				valorTotal[indiceArea] = valorTotal[indiceArea] + academia
				escreva("\nObrigado por usar nossa academia! O valor já foi adicionado a sua conta.\n")
				pare

			caso 'S':
				inteiro salao = 50
				valorTotal[indiceArea] = valorTotal[indiceArea] + salao
				escreva("\nObrigado por usar nosso Salão de Festas! O valor já foi adicionado a sua conta.\n")
				pare
			
			caso 'R':
				inteiro restaurante = 35
				valorTotal[indiceArea] = valorTotal[indiceArea] + restaurante
				escreva("\nObrigado por comer em nosso Restaurante! O valor já foi adicionado a sua conta.\n")	
				pare
		}
	}

	funcao real totalAPagar(inteiro indicePagar) {
		exibirHospedes()
		escreva("\nPorfavor digite seu índice correspondente: ")
		leia(indicePagar)
		liberarQuarto(nomes[indicePagar])
		exibirQuartos()
		retorne valorTotal[indicePagar]
	}

	funcao liberarQuarto(cadeia nomeLiberado) {
		para(inteiro i = 0; i < 10; i++) {
			se(nomeLiberado == quartos[i]) {
				quartos[i] = "L"
				pare
			} senao {
				escreva("Não há nenhum quartos vínculado a esse hóspede")
				pare
			}
		}
	}
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2423; 
 * @DOBRAMENTO-CODIGO = [24, 65, 105, 111, 121, 141, 172, 181];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 3, 8, 5}-{cpfs, 4, 9, 4}-{qntdDias, 4, 19, 8}-{valorTotal, 5, 6, 10}-{quartos, 13, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */