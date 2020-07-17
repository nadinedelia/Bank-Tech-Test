# frozen_string_literal: true

require_relative 'transaction'
require_relative 'statement'

class Account
  attr_reader :balance, :transaction_history

  def initialize(transaction = Transaction, statement = Statement.new)
    @balance = 0
    @transaction_history = []
    @transaction = transaction
    @statement = statement
  end

  def deposit(money)
    raise "It's not possible to deposit a negative amount" if money < 0

    @balance += money
    transaction_history.push(@transaction.new(credit: money, balance: @balance))
    "You deposited £#{money}. New balance: £#{@balance}"
end

  def withdraw(money)
    raise 'Transaction not possible - insufficient funds' if @balance < money || money < 0

    @balance -= money
    transaction_history.push(@transaction.new(debit: money, balance: @balance))
    "You've withdrawn £#{money}. New balance: £#{@balance}"
  end

  def print_statement
    @statement.print(transaction_history)
  end

end
