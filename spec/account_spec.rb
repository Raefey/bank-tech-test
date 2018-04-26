require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe '.deposit' do
    it 'adds the amount to the balance' do
      account.credit(5)
      expect(account.balance).to eq(5)
    end

    it 'adds the transaction to the transaction history' do
      account.credit(5)
      expect(account.transaction_history.length).to be(1)
    end
  end

  describe '.withdraw' do
    it 'subtracts the amount from the balance' do
       account.debit(5)
       expect(account.balance).to eq(-5)
    end
    it 'adds the transaction to the transaction history' do
      account.debit(5)
      expect(account.transaction_history.length).to be (1)
    end
  end
end
