require_relative 'transaction'
require_relative 'statement'

class Account

    attr_reader :balance, :transaction_history

    def initialize
        @balance = 0
        @date = Time.now.strftime("%d/%m/%Y")
    end

    def deposit(money)
        @balance += money
    end

    def balance
        @balance
        # balance = '%.2f' % 
    end

    def withdraw(money)
        if @balance < money || @balance < 0
        raise "You don't have sufficient funds"
        else
        @balance -= money
    end
    end


end
