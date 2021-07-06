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

  # describe '#table_of_transactions' do
  #   it 'creates table with correct title' do
  #   @table = instance_double("Terminal::Table")
  #     subject.table_of_transactions
  #     expect(@table).to receive(:title).with(:Statement)
  #   end

  #   it 'creates table with correct headings' do
  #     expect(@table).to respond_to(:headings).with_keywords(:Date, :Debit, :Credit, :Balance)
  #   end
  # end
end
