# frozen_string_literal: true

require_relative 'transaction'
require_relative 'statement'
require_relative 'formatting'

class Account
  attr_reader :balance, :transaction_history

  def initialize(transaction = Transaction, statement = Statement.new)
    @balance = 0
    @date = Time.now.strftime('%d/%m/%Y')
    @transaction_history = []
    @transaction = transaction
    @statement = statement
  end

  def deposit(money)
    if money < 0
      raise_error
    else
      @balance += money
      transaction = @transaction.new(credit: money, balance: @balance)
      save_transaction(transaction)
      increase_message(money)
    end
  end

  def withdraw(money)
    if @balance < money || money < 0
      raise_error
    else
      @balance -= money
      transaction = @transaction.new(debit: money, balance: @balance)
      save_transaction(transaction)
      decrease_message(money)
    end
  end

  def raise_error
    raise 'Transaction not possible - insufficient funds'
  end

  def print_statement
    @statement.print(transaction_history)
  end

  def save_transaction(transaction)
    @transaction_history << transaction
 end
end
