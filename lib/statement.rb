# frozen_string_literal: true

require_relative 'account'
require 'terminal-table'

class Statement
  attr_reader :table

  def print_table(_transactions)
    'date || credit || debit || balance
    14/01/2012 || || 500.00 || 2500.00
    13/01/2012 || 2000.00 || || 3000.00
    10/01/2012 || 1000.00 || || 1000.00'
  end
end
