package PolimorfismoHeranca;

public class Cachorro extends Animal {
	
	public Cachorro () {
		super("Cachorro");
		//O super() serve para chamar o construtor da superclasse
	}
	
	// O modificador override é necessário para estender ou modificar a implementação abstrata“@Override” é uma “annotation” que pode ser acrescentada a um método que foi
	// sobreposto (“overridden”). Ela deve ser usada para métodos sobrepostos, não
	// necessariamente aqueles que devem ser implementados devido ao uso de uma interface
	@Override
	public void Nome (String nomeanimal) {
		System.out.println("Nome do cachorro " +nomeanimal);
	}
	@Override
	public void Idade (int idadeanimal) {
		System.out.println("Idade: "+idadeanimal);
	}
	@Override
	public void Som (String somanimal) {
		System.out.println("Som que o seu cachorro emite: "+somanimal);
	}
	public void Corre () {
		System.out.println("Uma das caracteristicas do cachorro é correr!");
	}
}
