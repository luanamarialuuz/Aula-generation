programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real x2, x1, y1, y2, d, px, py

		escreva ("\nDigite o valor x2: ")
		leia(x2)
		escreva ("\nDigite o valor x1: ")
		leia(x1)
		escreva ("\nDigite o valor y2: ")
		leia(y2)
		escreva ("\nDigite o valor y1: ")
		leia(y1)

		px = mat.potencia (x2 - x1, 2)
		py = mat.potencia(y2 - y1, 2)
		d =  mat.raiz(px + py, 2)

		
		
		escreva ("\nO valor da distância entre os pontos é: " , d )


		
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 233; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */