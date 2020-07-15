# frozen_string_literal: true

require 'transaction'

describe Transaction do
  it 'makes a deposit' do
    transaction = Transaction.new(credit: 100, balance: 100)
    expect(transaction.date).to eq(Time.now.strftime('%d/%m/%Y'))
    expect(transaction.credit).to eq(100)
    expect(transaction.debit).to eq(nil)
    expect(transaction.balance).to eq(100)
  end

  it 'makes a withdrawal' do
    transaction = Transaction.new(debit: 200, balance: 400)
    expect(transaction.date).to eq(Time.now.strftime('%d/%m/%Y'))
    expect(transaction.credit).to eq(nil)
    expect(transaction.debit).to eq(200)
    expect(transaction.balance).to eq(400)
  end
end
