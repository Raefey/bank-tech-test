require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe '.balance' do
    it 'returns the current balance' do
      expect(account.balance).to eq(0)
    end
  end

  describe '.deposit' do
    it 'adds the amount to the balance' do
      account.deposit(5)
      expect(account.balance).to eq(5)
    end
  end

  describe '.withdraw' do
    it 'subtracts the amount from the balance' do
     account.withdraw(5)
     expect(account.balance).to eq(-5)
   end
 end
end
