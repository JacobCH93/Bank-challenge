
class Bank
attr_reader :balance
START_BALANCE = 0

def initialize
    @balance = 0
end

def balance
return @balance 
end 

def deposit(deposit)
    return @balance + deposit
end

def withdraw
    return @balance - withdraw
end

def date

end


end