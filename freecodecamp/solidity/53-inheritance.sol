// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

// parent contract
contract ERC20Token {
	string public name;
	mapping(address => uint256) public balances;

	constructor(string memory _name) {
		name = _name;
	}

	function mint() public {
		balances[tx.origin] ++;
	}
}

// child contract
contract MyToken is ERC20Token {
	string public symbol;
	constructor(string memory _name, string memory _symbol) ERC20Token(_name) {
		symbol = _symbol;
	}
}
