// contracts/StorepayCoin.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/TokenTimelock.sol";

contract StorepayCoin is ERC20Burnable {
    TokenTimelock public teamTimelock;
    constructor() ERC20("Storepay Coin", "SPC") {
        // IEO
        _mint(0x35B5b3Fb6708f898Cc4307aBF138fbc8a832795D, 90000000000*10**18);

        // Secondary market
        _mint(0xfbcD661cC65F609d068a0710E2Fab0f4978c3bb3, 60000000000*10**18);

        // Storepay Holding Singapore
        _mint(0xF00e55B4a680989A185b8691dEaC3a14269Ddc24, 180000000000*10**18);

        // Liquidity
        _mint(0xdcDC10d974541c0C5F87B53f10Be192063418Fa2, 60000000000*10**18);

        // International strategic partnership
        _mint(0x2c19cf7694Bdc1077e2D1A2a61ec6666199037E9, 66000000000*10**18);

        // Reward and activation fund
        _mint(0x0D569A2fb6B9A8676f6be5C1BA65Ae2E51B2758b, 54000000000*10**18);

        // Founders, team and advisors
        teamTimelock = new TokenTimelock(this, 0x7C0cB62d6405480A6dC31C64B3E3dE78a6F972b9, block.timestamp + 1*365*24*60*60);
        _mint(address(teamTimelock), 30000000000*10**18);

        // Strategic resource
        _mint(0xf8B0a663603A214A973d86C852c3ff041465ac56, 60000000000*10**18);
    }
}