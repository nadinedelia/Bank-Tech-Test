# frozen_string_literal: true

def save_transaction(transaction)
  @transaction_history << transaction
end

def raise_error
  raise 'Transaction not possible - insufficient funds'
end