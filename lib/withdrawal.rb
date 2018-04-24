class Withdrawal

  attr_reader :debit, :credit

  def initialize(amount)
    @debit = amount
    @credit = nil
  end
end
