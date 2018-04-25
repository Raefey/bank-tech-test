require 'printer'

describe Printer do

  let(:deposit) {double :deposit, date: '10/10/10', debit: nil, credit: 42, balance_at_that_time: 42}
  subject(:printer) { described_class.new }

  describe '.print_all_transactions' do
    it 'should print a header once, and then all transactions' do
      expect(printer.print_all_transactions([deposit])).to eq(['date || credit || debit || balance', '10/10/10 || 42 ||  || 42'])
    end
  end
end
