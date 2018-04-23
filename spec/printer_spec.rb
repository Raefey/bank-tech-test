require 'printer'

describe Printer do

  subject(:printer) { described_class.new('fake account') }

  describe '.print_header' do
    it 'should print a header once' do
      expect(printer.print_header).to eq('date || credit || debit || balance')
    end
  end
end
