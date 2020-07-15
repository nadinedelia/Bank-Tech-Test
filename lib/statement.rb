# frozen_string_literal: true

class Statement

  def header
    puts "date       || credit || debit || balance\n"
  end

  def format(number)
    number == 0 ? '' : '%.2f' % number
  end

  def print(my_transactions)
    puts header
    array = my_transactions.map do | transaction|
       "#{transaction.date} ||  #{transaction.credit}   || "\
       "#{transaction.debit}   ||    #{transaction.balance}\n"
    end
    puts array.reverse.join('')
    end

end
