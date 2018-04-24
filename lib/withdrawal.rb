class Withdrawal

  attr_reader :debit, :credit
  attr_accessor :balance_at_that_time

  def initialize(amount)
    @debit = amount
    @credit = nil
    @date = date
  end

  private
  def date
    Time.now.strftime('%d/%m/%y')
  end
end
