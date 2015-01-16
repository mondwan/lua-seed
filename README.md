# lua-seed - the seed for boostrapping lua application

This project is an application skeleton for writting regular lua application.

The seed does not do mcuh. It just shows the directory layout, recommended
development kits

# Getting Started

## Clone lua-seed

There are 2 ways to do so

* If you would like to read history of this seed

```
git clone http://192.168.0.22/git/lua-seed.git
cd lua-seed
```

* If you would like to start a new project without any history of this project

```
git clone --depth=1 http://192.168.0.22/git/lua-seed.git
cd lua-seed
```

Note that ```depth=1``` tells git to only pull down one commit worth of historical data

# Dependency

## lunit

That's the testing library we are using in the seed

# Directory layout

```
src/                   --> all of the source files for the application
doc/                   --> Beside this README, extra documents will be placed
                           here
test/                  --> Testcases, test data and all testing related stuff
                           will be placed here
test_all.lua           --> A simple script for running testcases
```

# Testing

## Running unit tests

[lunit][lunit] is the testing library we are using.

Besides manually run each testcases inside ```test/```, you can do this:

```
cd <PROJECT_ROOT>
lua test_all.lua
```

Since lua is not good at doing filesystem operation, it is not easy to
***find*** our codes during testing. That's why we need to ```cd``` to the
project root. So that we can inject our repository into the LUA_PATH.

# Documentation in doc/

Beside this README, we suggest you to place documentations into ```doc/```.

[lunit]: https://github.com/dcurrie/lunit
