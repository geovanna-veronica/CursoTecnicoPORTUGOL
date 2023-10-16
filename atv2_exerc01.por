programa
{
	
	funcao inicio()
	{
		inteiro dias
		real valor
		faca {
			escreva("Diária: R$ ")
			leia (valor)
			escreva("Dias: ")
			leia (dias)

			se(dias <= 0 ou valor <= 0 ou dias > 30) {
				escreva("Valor inválido, digite novamente:\n")
			}
		} enquanto ((dias <= 0 ou valor <= 0) ou (dias > 30))
		
		escreva ("Fim do programa")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */