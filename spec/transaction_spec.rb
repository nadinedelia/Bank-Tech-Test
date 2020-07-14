# frozen_string_literal: true

require 'transaction'

# date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00

describe Transaction do
  xit 'is initialised with a date, credit, debit and balance' do
    transaction = Transaction.new(date, credit, debit, balance)
    expect(transaction.date).to eq(Time.now.strftime('%d/%m/%Y'))
    expect(transaction.credit).to eq(1000)
    expect(transaction.debit).to eq(0)
    expect(transaction.balance).to eq(1000)
  end
end
