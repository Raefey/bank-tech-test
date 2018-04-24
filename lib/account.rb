require 'deposit'
require 'withdrawal'
class Account
  DEFAULT_BALANCE = 0

  attr_reader :balance, :transaction_history, :withdrawal, :deposit

  def initialize(withdrawal = Withdrawal, deposit = Deposit)
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    @withdrawal = withdrawal
    @deposit = deposit
  end

  def credit(amount)
    @balance += amount
    new_deposit_object = deposit.new(amount)
    new_deposit_object.balance_at_that_time = balance
    @transaction_history.push(new_deposit_object)
  end

  def debit(amount)
    @balance -= amount
    new_withdrawal_object = withdrawal.new(amount)
    new_withdrawal_object.balance_at_that_time = balance
    @transaction_history.push(new_withdrawal_object)
  end

end
