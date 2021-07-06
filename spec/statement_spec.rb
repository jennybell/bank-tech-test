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
  
  # describe '#print' do
  #   it 'prints the current balance' do
  #     @account.deposit(5)
  #     expect(subject.print).to include("5")
  #   end
    
  

end

