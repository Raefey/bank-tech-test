require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe '.balance' do
    it 'returns the current balance' do
      expect(account.balance).to eq(0)
    end
  end
end
