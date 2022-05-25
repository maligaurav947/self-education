// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract MyContract {
	uint8 public peopleCount;

	mapping(uint => Person) public people;

	struct Person {
		uint8 personId;
		string firstName;
		string lastName;
	}

	function addPerson(string memory firstName, string memory lastName) public {
		incrementCount();
		people[peopleCount] = Person(peopleCount, firstName, lastName);
	}
	
	function incrementCount() internal {
		peopleCount += 1;
	}
}
