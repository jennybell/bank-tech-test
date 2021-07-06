require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transactions) {[["06, 07, 21", "1000", " ", "500"]]}
  describe 'initialize' do
  end

  describe '#print' do
    it 'returns a table' do
      p statement
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
