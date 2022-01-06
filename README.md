# Bank-challenge

## The aim of this Challenge
To make a simple banking application that can be used in IRB, that can keep track of deposits, withdrawals and balance aswell as the date they are made. 

## Approach
I chose to use Ruby for this task as I wanted to refresh my mind on how to use it. I also thought this is a fairly straight forward app and therefore Ruby would be a good choice. I started by thinking about what were the different elements, (which would be created using methods), that would be needed to create the end result. 

I would need a balance and then be able to add and subtract from it. I would alos need a realtime time generator so the transactions would be ordered and given a timestamp. I would then need a 'Statement' method in order to return a list of transactions.  
### How to run:
1. Clone repository and run 'bundle install'.
2. Run 'irb' in the command line.
3. Require the file by running 'require './lib/bank'' and Create a new instance to run off by running 'bank = Bank.new'.
4. You can check you balance by running 'bank.balance', you will always start with 0 and you cannot have a negative amount.
5. You can now add money to your account using 'bank.deposit(100)' or any amount you choose.
6. Once you have a positive amount in your account you can withdraw money using 'bank.withdraw(50)' or any other amount you choose.
7. Finally, you can see your statement with a list of transactions and your remaining balance by running 'bank.generate_statement'. This will give you a list of transactions with the date they were made as well as the remaining balance. 

## You should get something like this in your IRB
```
     Date    ||  Credit ||   Debit      ||  Balance
05/01/2022   ||   £70   ||              ||  £70
05/01/2022   ||         ||   £10.11     ||  £59.89
05/01/2022   ||         ||   £10.11     ||  £49.78
```

## Example of the program in use
<img width="777" alt="Screenshot 2022-01-06 at 16 16 03" src="https://user-images.githubusercontent.com/77504397/148415021-5b93ebf3-e03d-497b-b9ae-881b803127af.png">


