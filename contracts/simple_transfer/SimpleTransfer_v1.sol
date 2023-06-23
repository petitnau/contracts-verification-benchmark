// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >= 0.8.2;

contract SimpleTransfer {

    constructor () payable {
    }

    function withdraw(uint amount) public {
        require(amount <= address(this).balance);

        (bool succ,) = msg.sender.call{value: amount}("");
        require(succ);	
    }
}