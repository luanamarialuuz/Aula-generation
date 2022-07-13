package POO;

public class ClienteConta {

	public static void main(String[] args) {
		ContaBancaria ContaBancaria = new ContaBancaria();
		ContaBancaria.nomeCliente = "Luana Maria";
		ContaBancaria.saldo = 400;
		System.out.println("\nCliente: " + ContaBancaria.getCliente());
		System.out.println("\nO seu saldo atual é: R$" + ContaBancaria.getValor());
	}

}

