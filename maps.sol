pragma solidity ^0.6.0;

contract MyContract{
   //mappings
   //key value storage 
   //mapping(key => value) public names;
   mapping(uint => string) public names;
   
   constructor()public {
       names[1]="Aarthi";
       names[2]="Narayanan";
       //if value for a particular key or index is not there, it returns default value ..here empty string
   }
   
   mapping(uint => Book)public books;
   struct Book{
       string author;
       string title;
   }
   
   function addBook(uint _id, string memory _title,string memory _author)public{
       books[_id] = Book(_title, _author);
   }
   
   //nested mappings
   //mapping inside a mapping
   //mapping(key => mapping(key2 => value2))public myMapping;
   mapping(address => mapping(uint => Book))public myMapping;
   
   function addMyBook(uint _id, string memory _title, string memory _author)public{
       //msg.sender is a global variable that allows u to capture the address of the sender/person passed in the fn
        myMapping[msg.sender][_id] = Book(_title,_author);
       
   }
   
}