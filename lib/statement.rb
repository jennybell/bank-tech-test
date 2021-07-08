# frozen_string_literal: true

require_relative 'account'
require 'terminal-table'

class Statement
  attr_reader :table

  def print_table(transactions)
    rows = transactions
    @table = Terminal::Table.new title: 'Statement', headings: %w[Date Credit Debit Balance], rows: transactions
    puts table
  end

end
