class Deposit

  attr_reader :credit, :debit
  attr_accessor :balance_at_that_time

  def initialize(amount)
    @credit = amount
    @debit = nil
    @date = date
  end

  private
  def date
    Time.now.strftime('%d/%m/%y')
  end
end
