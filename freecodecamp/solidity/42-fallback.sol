// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract MyContract {
	mapping(address => uint256) public balances;
	address payable wallet;

	constructor(address payable _wallet) {
		wallet = _wallet;
	}

	// fallback function.
	// external is not equal to public.
	fallback() external payable {
		buyToken();
	}

	function buyToken() public payable {
		//buy a token
		balances[msg.sender] += 1;
		// send ether to the wallet
		wallet.transfer(msg.value);
	}
}
// on solidity 8.13 I had a warning about not having a recieve ether function.
