// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

// parent contract
contract ERC20Token {
	string public name;
	mapping(address => uint256) public balances;

	constructor(string memory _name) {
		name = _name;
	}

	function mint() public virtual {
		balances[tx.origin] ++;
	}
}

// child contract
contract MyToken is ERC20Token {
	string public symbol;
	address[] public owners;
	uint256 ownerCount;

	constructor(string memory _name, string memory _symbol) ERC20Token(_name) {
		symbol = _symbol;
	}

	function mint() public override {
		super.mint();
		ownerCount ++;
		owners.push(msg.sender);
	}
}
