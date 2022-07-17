package PolimorfismoHeranca;

public class Preguica extends Animal{
	
	public Preguica() {
		super("Cachorro");
	}
	
	@Override
	public void Nome (String nomeanimal) {
		System.out.println("Nome do preguica: "+nomeanimal);
	}
	@Override
	public void Idade (int idadeanimal) {
		System.out.println("Idade: "+idadeanimal);
	}
	@Override
	public void Som (String somanimal) {
		System.out.println("Som que o seu preguica emite: "+somanimal);
	}
	public void Subirarvores () {
		System.out.println("Uma das caracteristicas do preguica é subir em árvores!");
	}
	public void infoPreguica() {
	}

}
