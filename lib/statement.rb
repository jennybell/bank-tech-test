require_relative 'account'

class Statement

  attr_reader :transactions

  OPENING_TRANSACTIONS = []

  def initialize
    @transactions = OPENING_TRANSACTIONS
  end

  def print(balance)
    "Your current balance is #{balance}"
  end
end