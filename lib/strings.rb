# frozen_string_literal: true

# OPTIONAL IRB INTERFACE:
# can be used by calling the methods in the account class (deposit & withdraw) to increase readability

def increase_message(money)
  puts "________________________________________________\n
    You deposited £#{money}. New balance: £#{@balance}\n________________________________________________"
end

def decrease_message(money)
  puts "________________________________________________\n
    You've withdrawn £#{money}. New balance: £#{@balance}\n________________________________________________"
end
