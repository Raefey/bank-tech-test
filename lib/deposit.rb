class Deposit

  attr_reader :credit, :debit

  def initialize(amount)
    @credit = amount
    @debit = nil
  end
end
