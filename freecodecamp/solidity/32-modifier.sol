// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract MyContract {
	uint8 public peopleCount;

	mapping(uint => Person) public people;

	address owner;

	// use this modifier later on functions.
	modifier onlyOwner() {
		require(msg.sender == owner);
		_; // this line was really needed for modifier to be complete.
	}

	struct Person {
		uint8 personId;
		string firstName;
		string lastName;
	}

	constructor() {
		owner = msg.sender;
	}

	// to make function shorter we can also use this syntax.
	function addPerson(
		string memory firstName,
		string memory lastName
	)
		public
		onlyOwner // our goal is to say that only the owner of smart contract can add person.
	{
		incrementCount();
		people[peopleCount] = Person(peopleCount, firstName, lastName);
	}
	// this was the syntax.
	
	function incrementCount() internal {
		peopleCount += 1;
	}
}
