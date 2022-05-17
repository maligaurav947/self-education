// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract MyContract {
	// enum is list in solidity.
	enum State { Waiting, Ready, Active }
	State public state;

	constructor() {
		state = State.Waiting;
	}

	function activate() public {
		state = State.Active;
	}

	function isActive() public view returns(bool) {
		return state == State.Active;
	}
}
