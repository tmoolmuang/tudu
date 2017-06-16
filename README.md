# Tudu     [![Build Status](https://travis-ci.org/tmoolmuang/tudu.svg?branch=master)](https://travis-ci.org/tmoolmuang/tudu)

Tudu is a Ruby on Rails application that allows users to create self-destructing to-do lists.
To-do lists are notorious for collecting junk: to-do items that you want to remember, but are not very important 
and thus get consistently put off. Tudu will aim to keep to-do lists manageable by automatically 
deleting to-do items that have not been completed after seven days. The hypothesis is that if the to-do item 
is not important enough to be completed in seven days, it doesn't belong on your to-do list.

The app is deployed on Heroku: https://tudu-tm.herokuapp.com/

The source code is here on GitHub: https://github.com/tmoolmuang/tudu

This app was created as part of the [Bloc](www.bloc.io) Web Developer Track.

# Setup and Configuration

**Languages and Frameworks**: Ruby on Rails and Bootstrap

**Ruby version 2.3.0**

**Rails version 4.2.5**

**Databases**: SQLite (Test, Development), PostgreSQL (Production)

**Development Tools and Gems include**:

+ Devise for user authentication

+ factory_girl_rails, and faker for seeding data

+ rspec, capybara, database_cleaner for testing

