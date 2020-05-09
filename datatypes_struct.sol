pragma solidity ^0.6.0;
// solidity - statically - typed language where type of variable has to be mentioned beforehand ..u can't assign declare variable of another type again
contract MyContract{
    //state variables
    uint public myUint=1;
    uint frock=0; // same as uint256
    int public shoe=-1;
    uint256 public pol=1234567;//if the number needs to be really big and u need to allocate more space for it ..sacrifice performance use this
    //uint is actually uint 256
    uint8 public sdk=72;//if the number need not be big and u want to optimise the smart contract use uint8...or lower versions as such
   
   //strings
   string public mystring="Hello,world!";
   bytes32 public myBytes32= "this works very very fasttt";
   // same as string ...but more performance..optimise your smart contracts to make them work faster...because bockchains are basically verry slooww
    
    //address 
    address public myAddress= 0xC2A9D47Ce8684ADEa49223C0d1765d43B67A6C61; 

    struct Person{
        //customised data structure -- custom type
         uint id;
         string name;  
    }
    
    Person public object = Person(1,"Aarthi"); 
    
    //local variables
    function getValue()public pure returns(uint)
    {   //local variable
        uint value=1;
        value +=2;
        //string ser="Hello world!";
        return value;
        // function declared pure returns only value of specified type
    }
    function myValue()public view returns(uint)
    {
        return frock;
    }
}