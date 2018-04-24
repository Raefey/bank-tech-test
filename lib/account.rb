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
    @transaction_history.push(deposit.new(amount))
  end

  def debit(amount)
    @balance -= amount
    @transaction_history.push(withdrawal.new(amount))
  end

end
