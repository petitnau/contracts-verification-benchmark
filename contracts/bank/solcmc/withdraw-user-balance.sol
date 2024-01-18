function invariant(uint amount) public {
    uint old_user_balance = balances[msg.sender];
    withdraw(amount);
    uint new_user_balance = balances[msg.sender];
    assert(new_user_balance == old_user_balance - amount);
}
