
pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
//Definimos las variables del token
contract SorianoCoin is StandardToken {
    string public name = "SorianoCoin";
    string public symbol = "SS";
    uint8 public decimals = 2;
    uint public INITIAL_SUPPLY = 12000;
//decimos que el total suply es igual al balance inicial y que envie los token a la cuenta que lo creo
    constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    }
}