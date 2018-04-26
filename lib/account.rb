require 'transaction'
class Account
  DEFAULT_BALANCE = 0

  attr_reader :balance, :transaction_history, :transaction

  def initialize(transaction = Transaction)
    @balance = DEFAULT_BALANCE
    @transaction_history = []
    @transaction = transaction
  end

  def credit(amount)
    @balance += amount
    transaction_formatter(transaction.new(amount, nil, balance))
  end

  def debit(amount)
    @balance -= amount
    transaction_formatter(transaction.new(nil, amount, balance))
  end

  private
  def transaction_formatter(transaction)
    @transaction_history.push(transaction)
  end
end
