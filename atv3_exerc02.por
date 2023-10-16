programa {
	
	funcao inicio() {
		caracter estado [10] 
		caracter resposta = 'S', estadoNovo
		inteiro quarto
		
		para (inteiro i = 0; i < 10; i++) {
			estado[i] = 'L'
		}
		faca {
			escreva("Digite um número do quarto entre 1 e 10: ")
			leia(quarto)
			quarto = quarto - 1
			se(quarto >= 10) {
				escreva("Quarto não existe.\n")
				pare
			}
			escreva("Digite 'O' para ocupado ou 'L' para livre: ")
			leia(estadoNovo)

			escolha(estadoNovo) {
				caso 'L':
				se(estado[quarto] == 'L' e estadoNovo == 'L') {
					escreva("Esse quarto já está livre.\n")
				}senao se(estadoNovo == 'L' e estado[quarto] == 'O') {
					escreva("Esse quarto foi liberado.\n")
					estado[quarto] = estadoNovo
				}
				
				pare
				
				caso 'O':
				se(estado[quarto] == 'O' e estadoNovo == 'O') {
					escreva("Esse quarto já está ocupado.\n")
				}senao se(estadoNovo =='O' e estado[quarto] == 'L') {
					escreva("Esse quarto foi ocupado.\n")
					estado[quarto] = estadoNovo
				}
				pare
			}	
			escreva("Deseja continuar? (S/N): ")
			leia(resposta)
		} enquanto (resposta == 'S')

		para(inteiro i = 0; i < 10; i++) {
			escreva( i+1, "- " , estado[i], ", ") 
		}


	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {estado, 4, 11, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */