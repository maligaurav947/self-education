// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract MyContract {
	// define a constant string.
	string public constant myString = "helloWorld";
	
	// define a boolean variable.
	bool public myBool = true;
	
	// defining different types of integers. signed and unsigned.
	int public myInt = -1;
	int8 public myInt8 = -128;
	uint public myUint = 1; // uint cant have signs like negatives.
	uint8 public myUint8 = 8;
	uint256 public myUint256 = 99999;
}
