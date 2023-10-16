programa
{
	
	funcao inicio() {
	
	caracter letra
	real kilos
	inteiro idade
	cadeia acompanhado
	cadeia exame

	// Escolha do usuário;
	escreva("Bem vindo(a) a nossa lavanderia e piscina, por favor escolha L ou P: ")
	leia (letra)

	// Caso ele escolha a lavanderia: 
	escolha (letra) {
		caso 'L':
		escreva("Insira a quantidade de KG de roupas que necessita lavar: ")
		leia (kilos)
		
		se (kilos >= 10) {
			kilos = 15*kilos
			escreva("O valor da lavagem foi R$ ", kilos)
		} senao {
			kilos = 20*kilos
			escreva("O valor da lavagem foi R$ ", kilos)
		}
		pare

	// Caso ele escolha a piscina:
		caso 'P':
		escreva("Escreva sua idade: ")
		leia (idade)
	
		se (idade < 18) {
			escreva ("Está acompanhado por alguém maior de idade, responda Sim ou Não: ")
			leia (acompanhado)
			se (acompanhado == "Não") {
				escreva("Providencie um acompanhante maior de idade.")
			} senao se ((idade < 18) e (acompanhado == "Sim")) {
				escreva("Seus exames estão em dia, responda Sim ou Não: ")
				leia (exame)
				se (exame == "Não") {
					escreva("Faça seus exames!")
				} senao {
					escreva("Aproveite a piscina!")
			}
			
			} 
		
		} senao {
			escreva("Seus exames estão em dia, responda Sim ou Não: ")
			leia (exame)
			se (exame == "Não") {
				escreva("Faça seus exames!")
			} senao {
				escreva("Aproveite a piscina!")
		}
		
		}
		
	}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */