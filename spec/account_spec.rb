require 'account'

describe Account do

    it 'should be able to deposit money' do
        expect(subject).to respond_to(:deposit).with(1).arguments
    end

    it 'should start with a balance of 0' do
        expect(subject.balance).to eq(0)
    end

    it 'should increase balance after money was deposited' do
        subject.deposit(10)
        expect(subject.balance).to eq(10)
    end

    it 'should be able to withdraw money' do
        expect(subject).to respond_to(:withdraw).with(1).arguments
    end

    it 'should decrease balance after money was withdrawn' do
        subject.deposit(30)
        subject.withdraw(10)
        expect(subject.balance).to eq(20)
    end

    it 'should throw error when funds insufficient' do
        subject.deposit(20)
        expect{ subject.withdraw(30) }.to raise_error(RuntimeError)
    end

    

    
    

end