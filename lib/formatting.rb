# frozen_string_literal: true

def increase_message(money)
  puts "________________________________________________\n
    You deposited £#{money}. New balance: £#{@balance}\n________________________________________________"
end

def decrease_message(money)
  puts "________________________________________________\n
    You've withdrawn £#{money}. New balance: £#{@balance}\n________________________________________________"
end
