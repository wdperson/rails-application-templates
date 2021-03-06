Rails Application Templates

A generic Rails application template for use. Have to constantly go
through steps to build applications with the technologies, gems and
other configuration files that I use.  Simplifying it with a Rails
application template.

It will do the following:
a) Assume you are using rspec instead of test::unit
b) Assume you are using MySQL
c) Assume you are using Git for your source control
d) Assume you are using autotest with Growl
e) Ask if you want to download bootstrap and unpack it for you
f) Assume you will use FactoryGirl instead of fixtures
g) Install pry for debugging
h) Create a default .gitignore file

Review the template to be sure it is going to do what you want.

I have also included a .railsrc file.  This should go in your home
directory for your user.  This will automatically add the switches in
the file to your rails new <APP_NAME> command.  The defaults:
1) Skip Unit Test
2) Use MySQL
3) Skip running Bundler (it is in the generic template file so no need to
run twice)
