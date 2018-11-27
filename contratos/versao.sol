pragma solidity 0.4.25;

contract LicencaPatente {
	
    string public nomeEmpresa;
    address detentor;
    address ARTISTA;
	
    modifier somenteArtista() {
        require(msg.sender==artista, "Somente artista pode realizar essa operação");
        _;
    }

    constructor() public {
        nomeEmpresa = "Artista SuperPop Ltda";
        artista = msg.sender;
    }
	
    function definirNomeDaEmpresa(string qualNomeDaEmpresa) public somenteArtista  {
        nomeEmpresa = qualNomeDaEmpresa;
    }

    function definirDetentor(address qualDetentor) public somenteArtista  {
        require(qualDetentor != address(0), "Endereço de agente invalido");
        detentor = qualDetentor;
    }
	
    function receberPeloUso() public payable {
        require(msg.value >= 100 szabo, "Por favor pague o valor mínimo");
        if (agente != address(0)) {
            agente.transfer((msg.value * 10) / 100);
        }
    }
}
