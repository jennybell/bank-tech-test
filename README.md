# Bank Tech Test

This tech test is to create a banking application that can be interacted with from the command line via an REPL such as IRB. This application will be written in Ruby and tested using Rspec. Code quality will be assessed using Rubocop and Simplecov gems. Statement is outputted to termianl using the terminal-table gem.

## How to install this application

Clone this repo and run bundle install from the command line. 

        git clone https://github.com/jennybell/bank-tech-test.git
        bundle install

 ## How to use this application

- Open a REPL from the command line and require the account file. E.g:

        irb
        require './lib/account.rb'

- To create a new instance of the account class with a balance of 0

        account = Account.new

- To deposit money into the account

        account.deposit(<amount>)

- To withdraw money from the account

        account.withdraw(<amount>)

 - To print the accoutn statement

        account.print_statement       

## How to test this application

Run the rspec testing suite from the command line. This will also run the simplecov gem to display % of coverage.

         rspec

  

## User Stories

- As a customer  
  So that I can look after my money  
  I would like to be able to open a bank account

- As a customer  
  So that I can put money in my bank account  
  I would like to put able to make deposits  

- As a customer  
  So that I can take money out of my bank account  
  I would like to be able to withdraw money

- As a customer  
  So that I know the state of my finances  
  I would like to be able to view a bank statement showing my balance, deposits and withdrawals along with the date of the transactions

  ## Edge cases

  ### Still to deal with:

  
  - Can't deposit or withdraw negative amount or 0

  ### dealt with:
  
  - Can't withdraw more than account balance

  ## Process

  - Started with account class for withdrawal/deposit
  - Statement class extracted to deal with debits, credits and dates. Statement still prints from account class to limit user interaction with the statement class.

  ## Still to work on

  - Tests and mocking
  - Unsure how to test that the table responds to input eg title, headings
  - Feature test in irb?