class Transaction

  def initialize(credit, debit, balance)
    @credit = credit
    @debit = debit
    @balance = balance
    @date = date
  end

  private
  def date
    Time.now.strftime('%d/%m/%y')
  end
end
