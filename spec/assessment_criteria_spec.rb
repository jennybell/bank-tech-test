# frozen_string_literal: true

require 'account'
require 'statement'
require 'timecop'

describe 'Assesment Criteria' do
  it 'outputs the statement as in the assessment criteria' do
    printed_statement = "date || credit || debit || balance
    14/01/2012 || || 500.00 || 2500.00
    13/01/2012 || 2000.00 || || 3000.00
    10/01/2012 || 1000.00 || || 1000.00"
    account = Account.new
    Timecop.travel(Time.local(2012, 1, 10, 0, 0, 0))
    account.deposit(1000)
    Timecop.travel(Time.local(2012, 1, 13, 0, 0, 0))
    account.deposit(2000)
    Timecop.travel(Time.local(2012, 1, 14, 0, 0, 0))
    account.withdraw(500)
p @transactions
    expect(account.print_statement(statement)).to eq(printed_statement)
  end
end
