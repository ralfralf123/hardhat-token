// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HardhatToken {
    string public name = "LacedNFT";
    string public symbol = "LCD";
    uint256 public totalSupply = 1000000;
    mapping(address => uint256) public balanceOf;

    address public owner;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Mint(address indexed to, uint256 value);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function.");
        _;
    }

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
        owner = msg.sender;
    }

    function mintToken(address _to, uint256 _value) public onlyOwner {
        require(_to != address(0), "Invalid address");
        require(_value > 0, "Invalid amount");

        balanceOf[_to] += _value;
        totalSupply -= _value;

        emit Mint(_to, _value);
        emit Transfer(address(0), _to, _value);
    }

    function burnToken(address _to, uint256 _value) public {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[_to] -= _value;

        emit Burn(msg.sender, _value);
        emit Transfer(msg.sender, address(0), _value);
    }

    function transfer(address _to, uint256 _value) public {
        require(_to != address(0), "Invalid address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
    }

    function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }
}