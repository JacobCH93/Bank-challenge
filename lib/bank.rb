
class Bank
attr_reader :balance

def initialize
    @balance = 0
end

def deposit(num)
    return @balance += num
end

def withdraw(num)
    return @balance -= num
end

def date

end

def statement
end


end