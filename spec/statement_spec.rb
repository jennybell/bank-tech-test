require 'statement'
require 'account'

describe Statement do

  # before :each do
  #   statement = Statement.new
  #   # @account = Account.new(@statement)
  # end

  it 'initializes with empty transactions' do
    expect(subject.transactions).to be_empty
  end
  
  describe '#print' do
    it 'returns a table' do
      subject.print
      expect(subject.table).to be_instance_of(Terminal::Table)
    end
    end
    
  

end

