programa
{
	
	funcao inicio()
	{
		inteiro duracaoEvento,horas,minutos,segundos

		escreva("\nTempo de duração do evento em segundos: ")
		leia(duracaoEvento) 

		horas = duracaoEvento / 3600 
		minutos = (duracaoEvento % 3600) / 60
		segundos = (duracaoEvento % 3600) % 1

		escreva("\nO evento terá duração de: ",horas," horas, ",minutos," minutos ",segundos," segundos") 
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 197; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */