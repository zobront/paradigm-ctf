// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";

contract ERC4626Mock is ERC4626 {
    constructor(address _vault) 
        ERC4626(IERC20Metadata(_vault)) 
        ERC20("4626 Vault", "4626") 
        {}
}