pragma solidity ^0.6.0;

contract MyContract{
    //conditionals
    address public  owner;
    constructor()public{
        owner=msg.sender;
    }
    function isEvenNumber(uint _number)public view returns(bool){
        // 4%2 = 0 - even
        // 5%2 = 1 - odd
        if(_number%2==0)
        return true;
        else
        return false;
        
    }
    
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
    uint count=0;
    function countEvenNumbers() public view returns(uint)
    {
        uint count=0;
        for(uint i=0; i<numbers.length; i++){
            if(isEvenNumber(numbers[i]))
            count+=1;
            
        }
     return count;
    }
    function isOwner() public view returns(bool){
       /* if(msg.sender == owner){
            return true;
        }
        else
        return false;*/// all this is not required
        return (msg.sender==owner);
    }
}