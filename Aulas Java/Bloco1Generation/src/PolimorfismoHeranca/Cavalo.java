package PolimorfismoHeranca;

public class Cavalo extends Animal {

	public Cavalo() {
		super("Cachorro");
	}
	
	@Override
	public void Nome (String nomeanimal) {
		System.out.println("Nome do cavalo: "+nomeanimal);
	}
	@Override
	public void Idade (int idadeanimal) {
		System.out.println("Idade: "+idadeanimal);
	}
	@Override
	public void Som (String somanimal) {
		System.out.println("Som que o seu cavalo emite: "+somanimal);
	}
	public void Corre () {
		System.out.println("Uma das caracteristicas do cavalo é correr!");
	}
}
