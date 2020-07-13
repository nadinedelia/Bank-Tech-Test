require 'transaction'


# date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00


describe Transaction do
    it 'is initialised with a date, credit, debit and balance' do
    date = '14/01/2012'
    transaction = Transaction.new(date, 1000, 0, 1000)
    expect(transaction.date).to eq('14/01/2012')
    expect(transaction.credit).to eq(1000)
    expect(transaction.debit).to eq(0)
    expect(transaction.balance).to eq(1000)
    
    end
end