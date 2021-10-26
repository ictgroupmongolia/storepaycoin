// contracts/StorepayCoin.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/TokenTimelock.sol";

contract StorepayCoin is ERC20Burnable {
    TokenTimelock public teamTimelock;
    constructor() ERC20("Storepay Coin", "SPC") {
        // IEO
        _mint(0x4B3DF033A6B23deF3463483325d470C14345827D, 90000000000*10**18);

        // Secondary market
        _mint(0x607CEbEA625eB3303DC071be1daDb21E7eb6E3f1, 60000000000*10**18);

        // Storepay Holding Singapore
        _mint(0xc0E9302b2A73ceC32a8f2369Fae4B08b65508dDb, 180000000000*10**18);

        // Liquidity
        _mint(0x2D27f516D38253bf87175dED4Ce67d45A6a730B9, 60000000000*10**18);

        // International strategic partnership
        _mint(0x2B72228537Ea60Fd3a3500058De68c78ec062C24, 66000000000*10**18);

        // Reward and activation fund
        _mint(0x8C4495d26c103841847E8ADb3bc88a5823E79be1, 54000000000*10**18);

        // Founders, team and advisors
        teamTimelock = new TokenTimelock(this, 0xBcC14b940e1AdC1aD84FdCB3C972F89039d7D5C2, block.timestamp + 1*365*24*60*60);
        _mint(address(teamTimelock), 30000000000*10**18);

        // Strategic resource
        _mint(0xeb433753eB6D5665139b57213F54b37166a21762, 60000000000*10**18);
    }
}