class Statement

  attr_reader :transactions

  OPENING_TRANSACTIONS = []

  def initialize
    @transactions = OPENING_TRANSACTIONS
  end
end