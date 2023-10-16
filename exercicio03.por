programa
{
	
	funcao inicio(){
		inteiro convidados

		escreva("Bem vindo(a) ao nosso auditório, escreva a quantidade de convidados: ")
		leia (convidados)
		
		se ((convidados <= 0) ou (convidados > 350)) {
			escreva("Número de convidados inválido.")
		}
		
		senao se ((convidados <= 150)) {
			escreva("Utilize o auditório Alfa.")
		}

		senao se ((convidados > 150) e (convidados <= 220)) {
			convidados = convidados - 150
			escreva("Utilize o auditório Alfa e acrescente mais ", convidados, " cadeira(s).")
		}

		senao {
			escreva("Utilize o auditório Beta.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */