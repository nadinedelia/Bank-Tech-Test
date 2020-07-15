# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transaction_history) { [transaction] }
  let(:transaction) { double(date: '15/07/2020', credit: '42.00', debit: '00.00', balance: '42.00') }

  it 'displays correct formatting' do
    formatting = "date || credit || debit || balance\n\n"\
    "15/07/2020 || 42.00 || 0.00 || 42.00\n"
    expect { statement.print(transaction_history) }.to output(formatting).to_stdout
  end
end
