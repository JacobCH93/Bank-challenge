class Bank
attr_accessor :statement, :balance, :amount, :date

def initialize
  @balance = 0
  @statement = []
end

def generate_date(date)
  time = Time.new
  date = time.strftime('%d/%m/%Y')
end

def deposit(amount)
  @balance += amount
  return (@statement << [generate_date(date), 
  ("  ||  #{amount.round(2)}"), ("    ||        "),
  (" || #{@balance.round(2)}")])
end

def withdraw(amount)
  fail "Insufficent funds" if  @balance - amount < 0
  @balance -= amount
  return (@statement << [generate_date(date),
  ("  ||        "), ("||   #{amount.round(2)}"), 
  ("    ||  #{@balance.round(2)}")])
end

def generate_statement
  puts "     Date    ||  Credit ||  Debit   ||  Balance"
  @statement.each do |date|
    puts date.join(" ")
    end
end
end