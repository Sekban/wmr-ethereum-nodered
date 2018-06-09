pragma solidity ^0.4.24;
contract MeterReader{
    struct Customer {
        string customerId;
        mapping(uint => mapping(uint => string)) usage;
    }
    
    address owner;
    Customer testCustomer;
    
    
    function(){	
        revert();		
	}
	
	// Constructor
	function MeterReader() {
	    owner = msg.sender;
	    testCustomer.customerId = "c398ffab-430d-4908-aa09-6f9b873e5a70";
	    // Test
	    testCustomer.usage[2018][4] = "bd7189c11b40e537bf417e0a64653c5199867b0014253ec6b712ade7978ead72";
	}
	
	function setSwarmFileHandle(string _fileHandle, uint _year, uint _month){
	    testCustomer.usage[_year][_month] = _fileHandle;
	}
	
	function getSwarmFileHandle(uint _year, uint _month) public constant returns (string){
	    return testCustomer.usage[_year][_month];
	}
}
