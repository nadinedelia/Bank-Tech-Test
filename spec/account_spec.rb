# frozen_string_literal: true

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
    expect { account.withdraw(30) }.to raise_error(RuntimeError)
  end

  it 'throws error when withdraw amount negative' do
    expect { account.withdraw(-20) }.to raise_error(RuntimeError)
  end

  it 'throws error when deposit amount negative' do
    expect { account.deposit(-50) }.to raise_error(RuntimeError)
  end
end
