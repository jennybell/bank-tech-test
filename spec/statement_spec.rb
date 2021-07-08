# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transactions) do
    ['10/01/2012 || 1000.00 || || 1000.00']
  end

  describe '#print' do
    it 'returns a table as in assessment criteria' do
      expect(statement.print_table(transactions)).to include('date || credit || debit || balance')
      expect(statement.print_table(transactions)).to include('10/01/2012 || 1000.00 || || 1000.00')
    end
  end
end
