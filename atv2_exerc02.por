programa {
	
	funcao inicio() {
		
		inteiro hospedes, quarto
		real valor, total = 0.0, menor = -9.0, maior = 0.0

		escreva("Por favor informe a quatidade de hóspedes: ")
		leia (hospedes)

		para (inteiro cont = 1; cont <= hospedes; cont ++) {
			
			escreva("Agora, informe o número do quarto: ")
			leia (quarto)

			escreva("Agora, informe o valor da diária: ")
			leia (valor)

			escreva ("\nQuarto: ", quarto, ", R$ ", valor, ".\n\n ")
		
			total = total + valor
			
			se(maior <= valor) {
				maior = valor
			} se(valor <= menor ou menor == -9.0){
				menor = valor
			} 
		}
		
		escreva("\nValor total: R$ ", total, "\n")
		escreva("Menor diária: ", menor, "\n")
		escreva("Maior diária: ", maior, "\n")
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 727; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */