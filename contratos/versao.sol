pragma solidity 0.4.25;

contract LicencaDePatente {
	
    string public nomeEmpresa;
    address detentor;
    address licenciado;
	
    modifier somenteLicenciado() {
        require(msg.sender==licenciado, "Somente a Empresa Morello Ltda. pode realizar essa operação");
        _;
    }

    constructor() public {
        nomeEmpresa = "Artista SuperPop Ltda";
        licenciado = msg.sender;
    }
	
    function definirNomeDaEmpresa(string qualNomeDaEmpresa) public somenteLicenciado  {
        nomeEmpresa = qualNomeDaEmpresa;
    }

    function definirDetentor(address qualDetentor) public somenteLicenciado  {
        require(qualDetentor != address(0), "Endereço do detentor da Patente inválido");
        detentor = qualDetentor;
    }
	
    function receberPeloServiço() public payable {
        require(msg.value >= 100 szabo, "Por favor pague o valor mínimo");
        if (detentor != address(0)) {
            detentor.transfer((msg.value * 25) / 100);
	else (licenciado != address(0)) {
            licenciado.transfer; }    
    }
  }
}
