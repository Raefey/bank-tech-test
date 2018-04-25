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
    object_formatter(deposit.new(amount))
  end

  def debit(amount)
    @balance -= amount
    object_formatter(withdrawal.new(amount))
  end

  private
  def object_formatter(object)
    object.balance_at_that_time = balance
    @transaction_history.push(object)
  end
end
