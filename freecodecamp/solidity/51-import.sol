// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract ERC20Token {
	string public name;
	mapping(address => uint256) public balances;

	function mint() public {
		balances[msg.sender] ++;
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
		ERC20Token _token = ERC20Token(address(token));
		_token.mint();
		wallet.transfer(msg.value);
	}
}
// add the token address for the second smart contract
// this contract has a problem that I will solve in next section.
