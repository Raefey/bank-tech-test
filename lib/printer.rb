require_relative 'account.rb'

class Printer

  attr_reader :account

  def initialize(account)
    @account = account
  end

  def print_header
    p 'date || credit || debit || balance'
  end
end
