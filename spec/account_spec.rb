# frozen_string_literal: true

require 'account'

describe Account do
  it 'makes ana ccount with a balance of zero' do
    expect(subject.balance).to eq(0)
  end
end
