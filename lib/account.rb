# frozen_string_literal: true
require_relative 'transaction'
require_relative 'statement'
require_relative 'functionality'
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
    increase_balance(money)
    increase_message(money)
    credit_trans = new_credit(money)
    save_transaction(credit_trans)
    end
  end


  def withdraw(money)
    if @balance < money || money < 0
      raise_error
    else
    decrease_balance(money)
    decrease_message(money)
    debit_trans = new_debit(money)
    save_transaction(debit_trans)
end
  end


  def print_statement
    @statement.print(transaction_history)
    end
end