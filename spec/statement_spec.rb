# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transactions) do
    [['10/01/12', '1000', ' ', '1000'], ['13/01/12', '2000', ' ', '3000'], ['14/01/12', '', '500', '2500']]
  end

  describe '#print' do
    it 'returns a table as in assessment criteria' do
      expect(statement.print_table(transactions)).to eq("date || credit || debit || balance
        14/01/2012 || || 500.00 || 2500.00
        13/01/2012 || 2000.00 || || 3000.00
        10/01/2012 || 1000.00 || || 1000.00")
    end
  end
end
