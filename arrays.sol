pragma solidity ^0.6.0;
contract arrays{
    // array
    //variables in general don't start with numbers
    uint[] public uintArray =[1,2,3];
    string[] public atringArray =["apple","banana","pear"];
    string[] public values;
    uint[][] public Array2D=[[1,2,3],[4,5,6]];
    function addValue(string memory _value)public {
        values.push(_value);// values is a publicly declared array...can be accessed in any function and outside the contract also
    }
    
    function valueCount()public view returns(uint){
        return values.length;
    }
    
    
    
}