class Account
  DEFAULT_BALANCE = 0

  attr_reader :balance, :transaction_history

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_history.push(amount)
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_history.push(-amount)
  end

end
