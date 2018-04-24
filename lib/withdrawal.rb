class Withdrawal

  attr_reader :debit, :credit

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
