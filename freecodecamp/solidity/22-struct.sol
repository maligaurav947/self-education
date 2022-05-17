// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract MyContract {
	Person[] public people;

	uint8 public peopleCount;

	struct Person {
		string firstName;
		string lastName;
	}

	function addPerson(string memory firstName, string memory lastName) public {
		people.push(Person(firstName, lastName));
		peopleCount += 1;
	}
}
