
def increase_balance(money)
    @balance += money
end

def decrease_balance(money)
    @balance -= money
end

def save_transaction(transaction)
    @transaction_history << transaction
end

def raise_error
    raise "Transaction not possible - insufficient funds"
end

def new_credit(money)
    transaction = @transaction.new(credit: money, balance: @balance)
end

def new_debit(money)
    transaction = @transaction.new(debit: money, balance: @balance)
end