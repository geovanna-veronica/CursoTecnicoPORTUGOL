programa {
	
	funcao inicio() {

		cadeia nome
		real valor, total = 0.0
		inteiro idade, gratuidade = 0, meia = 0
		caracter continuar = 'S'

		escreva("Digite o valor da diária: R$ ")
		leia(valor)
		
		faca {
			escreva("Digite o nome do hóspede: ")
			leia (nome)
			escreva("Digite a idade do hóspede: ")
			leia(idade)

			se(idade <= 4) {
				escreva(nome, " possui gratuidade!")
				total = total - valor
				gratuidade ++
			} senao se (idade >= 80) {
				escreva(nome, " paga meia!")
				total = total - (valor / 2)
				meia ++
			}
			
			escreva("\nDeseja continuar a informar os dados, digite 'S' ou 'N': ")
			leia (continuar)

			total = total + valor
			
		} enquanto (continuar == 'S')

		escreva("\nTotal de hospedagens: R$ ", total)
		escreva("\nTotal de gratuidade(s): ", gratuidade)
		escreva("\nTotal de meia(s): ", meia)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 806; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */