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
		peopleCount += 1;
		people[peopleCount] = Person(peopleCount, firstName, lastName);
	}
}
