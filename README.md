# Bank-challenge

## The aim of this Challenge
To make a simple banking application that can be used in IRB, that can keep trackof deposits, withdrarals and balance aswell as the date they are made. 

### How to run:
1. Clone repository and run 'bundle install'.
2. Run 'irb' in the command line.
3. Create a new instance to run off using 'bank = Bank.new'.
4. You can check you balance by running 'bank.balance', you will always start with 0 and you cannot have a negative amount.
5. You can now add money to your account using 'bank.deposit(100)' or any amount you choose.
6. Once you have a positive amount in your account you can withdraw money using 'bank.withdraw(50)' or any other amount you choose.
7. Finally, you can see your statement with a list of transactions and your reamaining balance by running 'bank.state'. This will give you a list of transactions with the date they were made as well as the remaining balance. 
