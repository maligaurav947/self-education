// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract ERC20Token {
	string public name;
	mapping(address => uint256) public balances;

	function mint() public {
		balances[tx.origin] ++;
		// this line added to solve the 51-import.sol problem.
	}
}

contract MyContract {
	address payable wallet;
	address public token;

	constructor(address payable _wallet, address _token) {
		wallet = _wallet;
		token = _token;
	}

	function buyToken() public payable {
		ERC20Token(address(token)).mint();
		// another way to do the same thing as last file.
		wallet.transfer(msg.value);
	}
}
// add the token address for the second smart contract
