pragma solidity ^0.6.0;
contract Counter{
    uint count;
    uint public flag= 1;
    //state variable uint above - permanent in nature - permanent state
    constructor() public{
        count=0;
    }
    function getCount() public view returns(uint){
        return count;
    }
    function incrementCount()public {
        count++;
        flag+=2;
    }
}
//always compile solfile first and thene deploy to get changes reflected