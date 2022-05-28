// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract MyContract {
	uint8 public peopleCount;

	mapping(uint => Person) public people;

	uint256 openingTime = 1653748300; //openingTime epoch time plus some.

	// use this modifier later on functions.
	modifier onlyWhileOpen() {
		require(block.timestamp => openingTime); // block.timestamp says what time is in the block.
		_; // this line was really needed for modifier to be complete.
	}

	struct Person {
		uint8 personId;
		string firstName;
		string lastName;
	}

	// to make function shorter we can also use this syntax.
	function addPerson(
		string memory firstName,
		string memory lastName
	)
		public
		onlyWhileOpen
	{
		incrementCount();
		people[peopleCount] = Person(peopleCount, firstName, lastName);
	}
	// this was the syntax.
	
	function incrementCount() internal {
		peopleCount += 1;
	}
}
