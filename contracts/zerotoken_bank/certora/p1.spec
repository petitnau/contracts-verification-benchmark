rule P1 {
    env e;
    uint amount;
    
    mathint currb = balanceOf(e.msg.sender);
    deposit(e, amount);
    mathint newb = balanceOf(e.msg.sender);

    assert(newb == currb + to_mathint(amount));
}
