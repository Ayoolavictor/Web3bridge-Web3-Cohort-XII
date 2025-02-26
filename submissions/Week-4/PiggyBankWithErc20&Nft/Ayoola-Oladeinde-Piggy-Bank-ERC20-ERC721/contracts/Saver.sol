// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Saver is ERC20, ERC20Permit, Ownable {
    constructor(address recipient, address initialOwner)
        ERC20("Saver", "SVR")
        ERC20Permit("Saver")
        Ownable(initialOwner)
    {
        _mint(recipient, 100000 * 10 ** decimals());
    }
}
