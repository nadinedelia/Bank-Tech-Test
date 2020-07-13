class Transaction

    attr_reader :date, :credit, :debit, :balance

    def initialize(date, credit, debit, balance)
        @date = Time.now.strftime("%d/%m/%Y")
        @credit = credit
        @debit = debit
        @balance = balance
    end

end

