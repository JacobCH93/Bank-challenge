
class Bank
attr_reader :balance, :statement, :date, :withdraw, :deposit, :balance 

def initialize
    @balance = 0
    @statement = []
end

def deposit(num)
    return @balance += num
end

def withdraw(num)
    return @balance -= num
end

def date 
    Date.now
end

def trans
    @statment << [date.to_s,  withdraw.to_s, deposit.to_s, balance.to_s] 

end

def statement
    return @statement 
end


end