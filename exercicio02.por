programa
{
	
	funcao inicio() {
		real cafe, agua
		inteiro salgadinhos
		inteiro convidados

		escreva("Bem vindo (a) ao nosso restaurante. \nPor favor informe o número de convidados: ")
		leia(convidados)

		se((convidados < 30) ou (convidados >= 350)) {
			escreva("Quantidade de convidados superior ou inferior à capacidade.")
		}
		senao {
			cafe = 0.2 * convidados
			agua = 0.5 * convidados
			salgadinhos = 7 * convidados

			escreva(cafe, " litro(s) de café, ", agua, " litro(s) de agua, ", salgadinhos, " salgadinho(s).")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */