// SPDX-License-Identifier: GPL-3.0-only

rule withdraw_user_balance {
    env e;
    uint256 amount;

    address sender = e.msg.sender;
    mathint old_user_balance = getBalanceEntry(sender);

    withdraw(e,amount);

    mathint new_user_balance = getBalanceEntry(sender);

    mathint amount_mathint = to_mathint(amount);
    assert new_user_balance == old_user_balance - amount_mathint;
}
