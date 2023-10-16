programa{
	
	funcao inicio() {
	real garcom = 10.5
	real preciso, horas, total
		escreva("Bem-vindo (a) ao nosso hotel :D\nPor favor, informe quantas horas você pretende gastar aqui: ")
		leia(horas)
		escreva("Agora informe quantos garçons você irá necessitar: ")
		leia(preciso)
		total = horas*garcom*preciso
		escreva("Isso irá custar R$", total, " reais.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 366; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */