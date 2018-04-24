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
      account.credit(5)
      expect(account.balance).to eq(5)
    end

    it 'adds the transaction to the transaction history' do
      account.credit(5)
      expect(account.transaction_history[0]).to have_attributes(:credit => 5)
    end
  end

  describe '.withdraw' do
    it 'subtracts the amount from the balance' do
       account.debit(5)
       expect(account.balance).to eq(-5)
    end
    it 'adds the transaction to the transaction history' do
      account.debit(5)
      expect(account.transaction_history[0]).to have_attributes(:debit => 5, :credit => nil)
    end
  end
end
