programa {
	
	inclua biblioteca Matematica --> mat
	funcao inicio() {
		real valorMesa [5]
		real desconto = 30.99
		
		para(inteiro cont = 1; cont <=4; cont++) {
			escreva("Insira o valor da mesa ", cont,": R$ ")
			leia(valorMesa[cont])
		}

		para(inteiro cont = 1; cont <=4; cont++) {
			se(valorMesa[cont] <= desconto) {
				escreva("\nNada a pagar na mesa ", cont,"!\n")
			} senao {
				valorMesa[cont] = valorMesa[cont] - desconto
				escreva("\nO valor total a ser pago na mesa ", cont, " será de: R$ ", mat.arredondar(valorMesa[cont], 2), "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 455; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorMesa, 5, 7, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */