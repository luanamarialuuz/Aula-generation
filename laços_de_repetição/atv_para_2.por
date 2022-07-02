programa
{
	
	funcao inicio()
	{
		inteiro x,soma=0

		para(x=1;x<=500;x++) // o valor incial de x será 1, enquanto x for menor igual a 500	irá executar e será acrescentado x + 1
		{
			se(x%2==1 e x%3==0) // aqui definimos nossa condicação para que apenas números ímpares e múltipos de 3 seja executado
			{
			soma = soma + x //  a medida que for testando a condição soma com o valor de x da condição do n impar
			escreva("\nNúmeros ímpares e múltiplos de 3: ",x)
			}

		}
		escreva("\nEsta é a soma total: ",soma)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 528; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */