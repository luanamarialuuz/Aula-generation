//

package Ficha2;

import java.util.Scanner;

public class Exerc6 {

	public static void main(String[] args) {
		
		Scanner ler=new Scanner(System.in);
		int n1, soma=0, cont=0;
		do
		{
		System.out.println("\nEntre com um numero: ");
		n1 = ler.nextInt();
			if(n1%3==0 && n1!=0)
			{
			soma = soma+n1;
			cont++;
			}
		}while(n1!=0);
			System.out.println("\nA media dos multiplos de 3: "+soma/cont);
	}
}

