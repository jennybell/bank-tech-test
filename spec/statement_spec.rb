# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transactions) do
    [['10/01/12', '1000', ' ', '1000'], ['13/01/12', '2000', ' ', '3000'], ['14/01/12', '', '500', '2500']]
  end
  describe 'initialize' do
  end

  describe '#print' do
    it 'returns a table' do
      statement.print_table(transactions)
      expect(statement.table).to be_instance_of(Terminal::Table)
    end
  end

end
