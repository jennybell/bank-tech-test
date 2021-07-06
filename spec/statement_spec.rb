require 'statement'

describe Statement do
  let(:statement) {Statement.new}
  describe 'initialize' do
  it 'initializes with empty transactions' do
p statement
    
    expect(statement.transactions).to be_empty
  end
end

  describe '#print' do
    it 'returns a table' do
      p statement
      statement.print
      expect(statement.table).to be_instance_of(Terminal::Table)
    end
  end

  describe '#stores_debit_transaction' do
    it 'stores a debit transaction' do
      
      statement.stores_debit_transaction(23.00)
      expect(statement.transactions.length).to eq(1)
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
