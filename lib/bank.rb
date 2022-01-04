
class Bank
attr_reader :balance, :statement, :withdraw, :deposit, :balance, :num1, :num2

def initialize
    @balance = 0
    @statement = []
end

def deposit(num2)
    return @balance += num2.to_i
end

def withdraw(num1)
    fail 'Insufficent funds', if  @balance <= 0
    else 
    return @balance -= num1.to_i
    end
end

# def bank_date(date)
#     date.strftime("%d/%m/%Y")
#   end

def state
    return @statement << [withdraw(num1), deposit(num2), balance]
end
end