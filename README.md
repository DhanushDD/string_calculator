# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## String Calculator — TDD Assignment (Incubyte)
**Author:** Dhanush Daran 
**Role Applied:** Ruby on Rails Developer 
**Assignment:** TDD (Test Driven Development) Coding
**Language:** Ruby 3.x 
**Testing Framework:** RSpec 
---
## Overview
This project implements the classic **String Calculator** using **Test Driven Development (TDD)** principles.
The goal is to demonstrate:
- Clean and maintainable Ruby code.
- Incremental test-first development.
- Proper error handling and readability.
- 100% automated test coverage.
---
## Problem Statement
Implement a method:
ruby
int add(String numbers)

## Requirements
1. Return 0 for an empty string.
2. Return the number itself for a single number input.
3. Return the sum of comma-separated numbers.
4. Allow newlines as delimiters (e.g., "1\n2,3" = 6).
5. Support custom delimiters using the syntax:
"//[delimiter]\n[numbers]" → e.g. "//;\n1;2" = 3
6. Support multiple or multi-character delimiters (e.g. "//[***][%%]\n1***2%%3" = 6).
7. Throw an exception for negative numbers with a message listing all negatives.

## Files used in this Project:-
1. `string_calculator.rb` - Contains the implementation of the StringCalculator class.
2. `spec/string_calculator_spec.rb` - Contains the tests written in RSpec for the StringCalculator class.
3. `.rspec` - Configures RSpec options such as color output and formatter.
4. `Gemfile` & `Gemfile.lock` - Defines gem dependencies for testing purposes.
5. `.gitignore` - Specifies files/directories that should be ignored by Git.
