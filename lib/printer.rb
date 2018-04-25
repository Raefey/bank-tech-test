require_relative 'account.rb'

class Printer

  attr_reader :array_of_transactions_with_header

  def initialize
    @array_of_transactions_with_header = []
  end

  def array_formatter(array_of_transactions)
    @array_of_transactions_with_header.push(print_header)
    array_of_transactions.each do |y|
      @array_of_transactions_with_header.push("#{y.date} || #{y.credit} || #{y.debit} || #{y.balance_at_that_time}")
    end
  end


  def print_all_transactions(array_of_transactions)
    array_formatter(array_of_transactions)
    array_of_transactions_with_header.each { |x| x }
  end

  private
  def print_header
    'date || credit || debit || balance'
  end
end
