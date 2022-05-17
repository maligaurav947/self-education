// SPDX-License-Identifier: UNLICENSED
// defining the license of smart contract.

// the line bellow says that the version of solidity is from 0.8.1 to 0.9.0
pragma solidity ^0.8.1; // declaring the version of solidity.

/*
solidity uses c++ style comments thus // for one line and this format for multiple lines.
*/

// contract is something accessible by everyone on the blockchain. it's gonna be public. it looks like a class.
contract FirstContract {
	// solidity is a staticly types language. so we have to declare the type of variables.
	string value;
	// that string stores on the blockchain.

	/*
	we use a constructor function to set a default value to the :string value:.
	*/
	constructor() {
		value = "myValue";
	}

	/* a function to read the value and show that.
	public: defines the visibility of this function and says that this function can be called
	by anyone who has access to the smart contract. not just inside of this contract.
	returns(string): says that this function will always return a string.
	view: functions can be declared :view: in which case they promise not to modify the state.
	memory: to say that the data must be stored at the memory.
	*/
	function get() public view returns(string memory) {
		return value;
	}

	/* declaring a funciton to change the value of the string to something else.
	we used :_value: to differentiate between the last :value: to this one.
	*/
	function set(string memory _value) public {
		value = _value;
	}


}

/*
1. we could remove the get function and add public to the :string value: like this.
:string public value:
2. we could also remove the constructor and write the string value like this.
:string public vlaue = "myValue";
*/

