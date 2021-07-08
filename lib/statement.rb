# frozen_string_literal: true

require_relative 'account'
require 'terminal-table'

class Statement
  attr_reader :table

  def print_table(_transactions)
   "date || credit || debit || balance" + "\n    "  + _transactions.reverse.join("\n    ")
  
  end

end
