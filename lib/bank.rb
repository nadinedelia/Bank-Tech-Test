
class Account

    attr_reader :balance

    def initialize
        @balance = 0
    end

    def deposit(money)
        @balance += money
    end

    def balance
        @balance
    end

    def withdraw(money)
        if @balance < money
        raise "You don't have sufficient funds"
        else
        @balance -= money
        end
    end

end