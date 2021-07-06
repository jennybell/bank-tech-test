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

- Run the rspec testing suite from the command line. This will also run the simplecov gem to display % of coverage.

         rspec

- To feature test this application you can run the commands from the feature_test.md from the command line. You will get the following output:

![screenshot](https://raw.githubusercontent.com/jennybell/bank_tech_test/main/featuretest.png)


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

  - Unsure how to test that the table responds to input eg title, headings
  - Automatic feature test in irb?
  - Format money correctly
  - Change order of transactions
  - Some refactoring

  ## Original specification

  Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

Specification
Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

Self-assessment
Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit