// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

// DRY : Don't Repeat Yourself
library Math {
	function divide(uint256 a, uint256 b) internal pure returns (uint256) {
		require(b > 0);
		uint256 c = a / b;
		return c;
	}
}

contract MyContract {
	uint256 public value;

	function calculate(uint _value1, uint _value2) public {
		value = Math.divide(_value1, _value2);
	}
}
// if you deploy MyContract the Math library will deploy automaticly.
