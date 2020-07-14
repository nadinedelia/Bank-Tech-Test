require_relative 'transaction'
require_relative 'statement'

class Account

    attr_reader :balance, :transaction_history

    def initialize(transaction = Transaction, statement = Statement.new)
        @balance = 0
        @date = Time.now.strftime("%d/%m/%Y")
        @transaction_history = [] 
        @transaction = transaction
        @header = 'date || credit || debit || balance'
    end

    def deposit(money)
        @balance += money
        transaction = @transaction.new(credit: money, balance: @balance)
        @transaction_history << transaction
        puts "New deposit of £#{money} was saved into your account"
    end

    def balance
        @balance
        puts "You're current balance is £#{@balance}."
    end

    def withdraw(money)
        if @balance < money || @balance < 0
        raise "You don't have sufficient funds"
        else
        @balance -= money

        transaction = @transaction.new(debit: money, balance: @balance)
        @transaction_history << transaction
        puts "Money withdrawn: £#{money}"
    end
    end

    
    def statement

            puts @header
            transaction_history.reverse.each do |tran|
              puts tran
            end

            # transaction_history.each { |trans| puts "#{date} || £#{credit} || £#{debit} || £#{balance}" }
    
        end

end
