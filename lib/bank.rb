class Bank
attr_accessor :statement, :withdraw, :deposit, :balance, :num1, :num2, :date

def initialize
  @balance = 0
  @statement = []
end

def bank_date(date)
  time = Time.new
  date = time.strftime('%d/%m/%Y')
end

def deposit(num2)
  @balance += num2.to_i
  return (@statement << [bank_date(date), ("  ||  #{num2.to_i}"), ("    ||        "), (" || #{@balance}")])
end

def withdraw(num1)
  fail "Insufficent funds" if  @balance - num1.to_i < 0
  @balance -= num1.to_i
  return (@statement << [bank_date(date), ("  ||        "), ("||   #{num1.to_i}"), ("    ||  #{@balance}")])
end

def state
  puts "     Date    ||  Credit ||  Debit   ||  Balance"
  @statement.each do |date|
    puts date.join(" ")
    end
end
end