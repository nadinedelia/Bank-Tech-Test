# frozen_string_literal: true

require_relative 'transaction'
# require_relative 'statement'

class Account
  attr_reader :balance, :transaction_history

  def initialize(transaction = Transaction)
    # statement = Statement.new
    @balance = 0
    @date = Time.now.strftime('%d/%m/%Y')
    @transaction_history = []
    @transaction = transaction
    # @statement = statement
    @header = "date          ||  credit  ||  debit  ||  balance\n"
  end

  def deposit(money)
    @balance += money
    transaction = @transaction.new(credit: money, balance: @balance)
    @transaction_history << transaction
  end

  attr_reader :balance

  def withdraw(money)
    if @balance < money || @balance < 0
      raise "You don't have sufficient funds"
    else
      @balance -= money

      transaction = @transaction.new(debit: money, balance: @balance)
      @transaction_history << transaction
end
  end

  def print
    puts @header
    array = @transaction_history.map do |_transaction|
      "#{@date}     ||   #{@credit}     || "\
      "#{@debit}        ||  #{@balance}\n"
    end
    puts array.reverse.join('')
    end
end
