// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >= 0.8.2;

contract SimpleTransfer {

    // ghost variables
    uint _sent;
    uint _deposited;

    constructor () payable {
        _deposited = address(this).balance;
    }

    // v1
    function withdraw(uint amount) public {
        require(amount <= address(this).balance);

        _sent += amount;

        (bool succ,) = msg.sender.call{value: amount}("");
        require(succ);
    }

    // p1
    function invariant() public view {
        assert(_sent <= _deposited);
    }
}
