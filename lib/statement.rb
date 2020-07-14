class Statement 

    def printed_statement
      puts print_header
  
    end
  
    def print_header
      "date || credit || debit || balance"
    end
  
    def formatting(input)
      input == "" ? "" : "%.2f" % input
    end
  end
  