# frozen_string_literal: true

class Statement

  def format(number)
    number == 0 || number == nil ? '     ' : '%.2f' % number
  end

  def print(my_transactions)
    puts header
    array = my_transactions.map do |transaction|
       "#{transaction.date} || #{format(transaction.credit)} || "\
       "#{format(transaction.debit)} || #{format(transaction.balance)}\n"
    end
    puts array.reverse.join('')
    puts footer
    end

end
