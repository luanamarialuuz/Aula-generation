//3-	Solicitar a idade de várias pessoas e imprimir: Total de pessoas com menos de 
// 21 anos. Total de pessoas com mais de 50 anos. O programa termina quando 
// idade for =-99. (WHILE)



package Ficha2;

import java.util.Scanner;

public class Exerc3 {

	public static void main(String[] args) {
		
		int mv=0, mc=0, idade;
		Scanner leia = new Scanner(System.in);
		
		System.out.print("\nEntre com sua idade: ");
		idade = leia.nextInt();
		while(idade!=-99)
		{
			if (idade<21)
				mv++;
			if (idade>50)
				mc++;
		System.out.print("\nEntre com sua idade: ");
			idade = leia.nextInt();
		} 
		System.out.print("\nO total de pessoas com menos de 21 é: "+mv);
		System.out.print("\nO total de pessoas com mais de 50 é: "+mc);

	}

}
