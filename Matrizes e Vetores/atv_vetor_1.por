programa
{
	
	funcao inicio()
	{
		inteiro nota[5], x, maior
		
		para (x=0;x<5;x++)
		{
			escreva("\nDigite a nota da atividade: ")
			leia(nota[x])
		}
		
		maior = nota[0]
		
		para (x=0;x<5;x++)
		{
			se(maior > 10){
				maior = nota[x]
			}
		}
		
		escreva ("\nA maior nota da atividade será: " ,maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 180; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */