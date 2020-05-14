pragma solidity ^0.6.0;
contract Bookshop{
    address payable public owner;
    uint public count;
    constructor()public { 
        owner = msg.sender;
        currentStatus = Statuses.nostock;
        count=0;
    }
    function addbook(address own)public{
     require(owner==own,"You are not the owner.You can't add stock");
     count++;
     currentStatus = Statuses.stockavailable;    
    }
    enum Statuses{stockavailable,nostock} 
    Statuses currentStatus ;
    modifier onlyWhileAvailable{ 
        require(currentStatus == Statuses.stockavailable, "Nostock..");
         _;
    }
    modifier costs(uint _amount){
        require(msg.value >= _amount, "Not sufficient ether provided...");
        _;
    }
   event Occupy(address _occupant, uint _value);
    receive()external payable onlyWhileAvailable costs(5 ether){
        owner .transfer(msg.value);
        count--;
        currentStatus = Statuses.stockavailable;
        if(count==0)currentStatus=Statuses.nostock;
        emit Occupy(msg.sender,msg.value);
    }
    
    
}