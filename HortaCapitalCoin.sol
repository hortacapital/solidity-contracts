// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MyToken is ERC20, ERC20Burnable, Ownable, ERC20Permit {

    address constant main_wallet = 0xBDE656e699958888f1A52bf2a10028dd347DaD6e;
    
    constructor(address initialOwner)
        ERC20("HortaCapital", "HCC")
        Ownable(initialOwner)
        ERC20Permit("HortaCapital")
    {
        _mint(main_wallet, 1000000 * 10 ** decimals());
    }
}

// Contract address:  0xe6433c57a5265129EC3F8AF839C5ffadF1B107Ab 
