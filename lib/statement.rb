require_relative 'account'
require 'terminal-table'


class Statement

  attr_reader :transactions, :table

  OPENING_TRANSACTIONS = []

  def initialize
    @transactions = OPENING_TRANSACTIONS
  end

  
  def print
    @table = table_of_transactions
    puts table
  end 

  private
  def table_of_transactions
    rows = []
    Terminal::Table.new :title => "Statement", :headings => ['Date', 'Credit', 'Debit', 'Balance'], :rows => rows
  end
end