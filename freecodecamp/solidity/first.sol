pragma solidity ^0.4.24;

contract FirstContract {
	string value;

	constructor() public {
		value = "myValue";
	}

	function set(string _value) public {
		value = _value;
	}

	function get() public view returns(string) {
		return value;
	}
}
