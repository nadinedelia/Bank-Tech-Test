class Statement 


  def header
    puts "date || credit || debit || balance\n"
  end
  
  def format(number)
    number == 0 ? "" : "%.2f" % number
  end

end