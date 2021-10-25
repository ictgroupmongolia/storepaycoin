// contracts/StorepayCoin.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract StorepayCoin is ERC20Burnable {
    constructor(address _mintTo) ERC20("Storepay Coin", "SPC") {
        _mint(_mintTo, 600000000000*10**18);
    }
}