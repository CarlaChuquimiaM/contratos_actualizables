// SPDX-License-Identifier: MIT
pragma solidity ^0.8.37;
contract proyecto1 {
    uint private contador;
    uint pago;

    constructor() {
        contador = 0;
    }

    function aumentar() internal {
        contador = contador + 1;
    }

    modifier validarNo0() {
        require(contador > 0, "no decrementa de 0");
        _;
    }

    function reducir() internal validarNo0 {
        // require(contador > 0, "no decrementa de 0");
        contador = contador - 1;
    }
}


