class Account

  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
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
