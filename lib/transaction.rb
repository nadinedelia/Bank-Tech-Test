class Transaction
    def initialize(credit: nil, debit: nil, balance: nil)

      @time = Time.now.strftime('%d/%m/%Y')
      @credit = credit
      @debit = debit
      @balance = balance
    end
  

  end