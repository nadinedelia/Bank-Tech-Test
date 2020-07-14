require 'account'

describe Account do
    let(:account) { Account.new }

    it 'should be able to deposit money' do
        expect(account).to respond_to(:deposit).with(1).arguments
    end

    it 'should start with a balance of 0' do
        expect(account.balance).to eq(0)
    end

    it 'should increase balance after money was deposited' do
        account.deposit(10)
        expect(account.balance).to eq(10)
    end

    it 'should be able to withdraw money' do
        expect(account).to respond_to(:withdraw).with(1).arguments
    end

    it 'should decrease balance after money was withdrawn' do
        account.deposit(30)
        account.withdraw(10)
        expect(account.balance).to eq(20)
    end

    it 'should throw error when funds insufficient' do
        account.deposit(20)
        expect{ account.withdraw(30) }.to raise_error(RuntimeError)
    end

    it 'should print a statement with date and header' do
        account.deposit(1000, "10/01/2012")
        expect{ account.print_statement }.to eq("date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00")
      end
    
    

end