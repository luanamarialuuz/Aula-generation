programa
{
	
	funcao inicio()
	{
			inteiro totalDias,ano,mes,dia

		escreva("\nEntre com o total de dias vividos por você: ")
		leia(totalDias) //1000

		ano = totalDias / 365 // 2
		mes = (totalDias % 365) / 30// 270 / 30 = 9
		dia = (totalDias % 365) % 30//270 % 30 = 0

		escreva("\nVocê viveu: ",ano," ano(s), ",mes," mes(es) e ",dia," dia(s) de vida") 
		// 1000 / 365 = 2
		//1000 % 365 1000 - 730 = 270 / 30 = 9
		//270 % 30 = 

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */