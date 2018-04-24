class Deposit

  attr_reader :credit, :debit

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
