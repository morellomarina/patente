pragma solidity 0.4.25;

contract LicencaPatente {
	
    string public nomeEmpresa;
    address detentor;
    address licenciado;
	
    modifier somenteLicenciado() {
        require(msg.sender==licenciado, "Somente a Empresa Morello Ltda. pode realizar essa operação");
        _;
    }

    constructor() public {
        nomeEmpresa = "Artista SuperPop Ltda";
        artista = msg.sender;
    }
	
    function definirNomeDaEmpresa(string qualNomeDaEmpresa) public somenteArtista  {
        nomeEmpresa = qualNomeDaEmpresa;
    }

    function definirDetentor(address qualDetentor) public somenteLicenciado  {
        require(qualDetentor != address(0), "Endereço de agente invalido");
        detentor = qualDetentor;
    }
	
    function receberLicença() public payable {
        require(msg.value >= 100 szabo, "Por favor pague o valor mínimo");
        if (detentor != address(0)) {
            detentor.transfer((msg.value * 25) / 100);
	else (licenciado != address(0)) {
            licenciado.transfer; }    
    }
  }
}
