pragma solidity ^0.6.1;
contract first{
    address owner;
    constructor()public
    {
        owner=msg.sender;   
    }
    function getOwner()public view returns(address) //read only function
    {
        return owner;
    }
    function setOwner(address newOwner)public
    {
        owner=newOwner;
    }
}