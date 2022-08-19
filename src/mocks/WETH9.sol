// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface WETH9 {
    function deposit() external payable;
    function withdraw(uint wad) external;
    function totalSupply() external view returns (uint);
    function approve(address guy, uint wad) external returns (bool);
    function transfer(address dst, uint wad) external returns (bool);
    function transferFrom(address src, address dst, uint wad) external returns (bool);
}

// pragma solidity ^0.4.18;

// contract WETH9 {
//     string public name     = "Wrapped Ether";
//     string public symbol   = "WETH";
//     uint8  public decimals = 18;

//     event  Approval(address indexed src, address indexed guy, uint wad);
//     event  Transfer(address indexed src, address indexed dst, uint wad);
//     event  Deposit(address indexed dst, uint wad);
//     event  Withdrawal(address indexed src, uint wad);

//     mapping (address => uint)                       public  balanceOf;
//     mapping (address => mapping (address => uint))  public  allowance;

//     function() public payable {
//         deposit();
//     }
//     function deposit() public payable {
//         balanceOf[msg.sender] += msg.value;
//         Deposit(msg.sender, msg.value);
//     }
//     function withdraw(uint wad) public {
//         require(balanceOf[msg.sender] >= wad);
//         balanceOf[msg.sender] -= wad;
//         msg.sender.transfer(wad);
//         Withdrawal(msg.sender, wad);
//     }

//     function totalSupply() public view returns (uint) {
//         return this.balance;
//     }

//     function approve(address guy, uint wad) public returns (bool) {
//         allowance[msg.sender][guy] = wad;
//         Approval(msg.sender, guy, wad);
//         return true;
//     }

//     function transfer(address dst, uint wad) public returns (bool) {
//         return transferFrom(msg.sender, dst, wad);
//     }

//     function transferFrom(address src, address dst, uint wad)
//         public
//         returns (bool)
//     {
//         require(balanceOf[src] >= wad);

//         if (src != msg.sender && allowance[src][msg.sender] != uint(-1)) {
//             require(allowance[src][msg.sender] >= wad);
//             allowance[src][msg.sender] -= wad;
//         }

//         balanceOf[src] -= wad;
//         balanceOf[dst] += wad;

//         Transfer(src, dst, wad);

//         return true;
//     }
// }
