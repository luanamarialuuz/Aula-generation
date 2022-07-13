package POO;

public class Aviao {

	//CARACTERISTICAS -> ATRIBUTOS
	
	public String passageiro;
	public boolean pouso;

	
	public Aviao (String pass, boolean p)
	{
		this.passageiro=pass;
		this.pouso=p;
	}
	
	//COMPORTAMENTOS -> METODOS
		

	public void PassageirosEmPe()
	{
		if(this.pouso==true)
			System.out.println("Todes sentades iremos pousar..");
		else
			System.out.println("Iremos pousar senhores passageires!");
	}
	
	public void PassageirosSentados()
	{
		if(this.pouso=true)
			System.out.println("Passageires sentades...");
		else
			this.pouso=true;
	}
	public void sentades ()
	{
		this.pouso=false;
	}
	public void estado()
	{
		System.out.println("Passageires estão em pé? "+this.pouso);
		System.out.println("Onome do passageiro: "+this.passageiro);
		
	}

	public String getPassageiro() {
		return passageiro;
	}

	public void setPassageiro(String passageiro) {
		this.passageiro = passageiro;
	}

}
