programa
{
	
	funcao inicio() {
		cadeia hospedes[7]
		
		inteiro indiceHospede = 0, escolhido
		
		 faca {
		 	escreva("\nBem-Vindo ao cadastro de hóspedes! \n1 - Cadastrar\n2 - Pesquisar\n3 - Sair\nPor favor escolha: ")
			leia(escolhido)

			escolha(escolhido) {
				caso 1:
					cadeia nomeHospede
					se(indiceHospede > 6) {
						escreva("\nMáximo de cadastros atingido.\n")
						pare
					}
					escreva("\nInsira o nome do hóspede: ")
					leia(nomeHospede)
					hospedes[indiceHospede] = nomeHospede
					indiceHospede++
					
				pare
				
				caso 2:
					cadeia nomeBuscado
					escreva("\nInsira o nome que deseja pesquisar: ")
					leia(nomeBuscado)
				
					para(inteiro i = 0; i < indiceHospede; i ++) {
						se(hospedes[i] == nomeBuscado) {
							escreva("\nHóspede ", nomeBuscado, " encontrado no índice ",1+i,"\n")
							pare
						} senao {
							escreva("\nHóspede não encontrado.\n")
						}
					}
				pare

				caso contrario:
					escreva("\nOpção não reconhecida, tente novamente.\n")
			}
		 	
		 } enquanto (escolhido != 3)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 379; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {hospedes, 5, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */