require 'bank'

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

end

