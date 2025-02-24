// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;


contract HortaccVIPBalances {
    address  _hortacc = 0xe6433c57a5265129EC3F8AF839C5ffadF1B107Ab;

    IERC20 public hortacc;    
    address public owner;    
    
    constructor() {
        owner = msg.sender;
        hortacc = IERC20(_hortacc);
    }

    function balances(address[] calldata users) external view returns ( uint[] memory){
        uint[] memory addrBalances = new uint[]( users.length);
        
        for(uint i = 0; i < users.length; i++) {
            addrBalances[i] = getBalance(users[i]);        
        }    
        return addrBalances;
    }

    function getBalance(address wallet) public view returns(uint){
        return hortacc.balanceOf(wallet);
    }
    
}

interface IERC20 {

    function balanceOf(address account) external view returns (uint);

}

// contract 0xECA4A30A063416722a05ebB749344D51d4bE8B63
