package PolimorfismoHeranca;

//abstract class é um tipo de classe especial que não pode ser instanciada, apenas herdada.

public abstract class Animal {

	private String TipoAnimal;
	
	public Animal (String tipoanimal) {
		this.TipoAnimal = tipoanimal;
	}
	
	abstract public void Nome (String nomeanimal);
	abstract public void Idade (int idadeanimal);
	abstract public void Som (String somanimal);

	public String getTipoAnimal() {
		return TipoAnimal;
	}

	public void setTipoAnimal(String tipoAnimal) {
		TipoAnimal = tipoAnimal;
	}
	
	
}
