
pragma solidity ^0.8.20;

contract CalculadoraBasica {
    // Variables d'estat
    uint256 public ultimResultat;
    uint256 public historialOperacions;

    // Retorna la suma de a i b, i actualitza l'estat
    function sumar(uint256 a, uint256 b) public returns (uint256) {
        uint256 resultat = a + b;
        ultimResultat = resultat;
        historialOperacions += 1;
        return resultat;
    }

    // Retorna la resta de a i b (només si a >= b), i actualitza l'estat
    function restar(uint256 a, uint256 b) public returns (uint256) {
        require(a >= b, "No es permeten resultats negatius");
        uint256 resultat = a - b;
        ultimResultat = resultat;
        historialOperacions += 1;
        return resultat;
    }

    // Retorna el producte de a i b, i actualitza l'estat
    function multiplicar(uint256 a, uint256 b) public returns (uint256) {
        uint256 resultat = a * b;
        ultimResultat = resultat;
        historialOperacions += 1;
        return resultat;
    }

    // Retorna l'últim resultat guardat
    function obtenirUltimResultat() public view returns (uint256) {
        return ultimResultat;
    }

    // Retorna quantes operacions s'han fet
    function obtenirHistorial() public view returns (uint256) {
        return historialOperacions;
    }

    // Posa a 0 l'últim resultat i el comptador d'operacions
    function resetear() public {
        ultimResultat = 0;
        historialOperacions = 0;
    }
}
