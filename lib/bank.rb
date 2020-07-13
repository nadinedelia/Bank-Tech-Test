
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
        if @balance < 0
            raise "You don't have sufficient funds"
        end
        @balance -= money
    end

end