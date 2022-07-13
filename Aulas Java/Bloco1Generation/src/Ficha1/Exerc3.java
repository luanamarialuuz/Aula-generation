//3-	Faça um programa que receba a idade de uma pessoa e mostre na saída em qual 
// categoria ela se encontra:
//•	10-14 infantil •	15-17 juvenil •	18-25 adulto

package Ficha1;

import java.util.Scanner;

public class Exerc3 {

	public static void main(String[] args) {
		
		int idade, infantil=10, juvenil=15, adulto=18;
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("\nDigite a sua idade ");
		idade = leia.nextInt();
		
		if(idade <= infantil || idade <=14) {
			System.out.println("\nVocê está na categoria infanti! ");
		}
		else if (idade <= juvenil || idade <=17){
			System.out.println("\nVocê está na categoria jovem! ");
		}
		else if (idade <= adulto || idade <= 25) {
			System.out.println("\nVocê está na categoria Adulto! ");
		}
	}

}
