//6) Crie uma classe conta bancaria e apresente os atributos e métodos 
// referentes esta classe, em seguida crie um objeto conta bancaria, defina 
// as instancias deste objeto e apresente as informações deste objeto no 
// console.


package POO;

public class ContaBancaria {

	//Criamos a classe ContaBancaria com dois atributos, que será modelo para a criação de outro objetos.
	public String nomeCliente;
	public double saldo;
	
	//especifica o método. 
	//parênteses vazio significa que ele não recebe parâmetro algum.
	public String getCliente() {
		
		String Cliente = nomeCliente;
		return Cliente;
	}
	public double getValor() {
		
		double Valor = saldo;
		return Valor;
	}
		
	

}
