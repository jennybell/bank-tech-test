# frozen_string_literal: true

require_relative 'account'
require 'terminal-table'

class Statement
  attr_reader :table

  def print_table(_transactions)
    puts 'date || credit || debit || balance'
    _transactions.reverse.each do |transaction|
      puts transaction
    end
  end
end
