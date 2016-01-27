# lua-seed - the seed for boostrapping lua application

This seed try to provide a skeleton for writting application with lua.

* Feature highlights

    * Layout of the file system of the directory
    * An example shows how to write testable lua codes
    * Makefile for running test cases and building documents via ldoc

# Getting Started

* Install

```
# If you would like to read history of this seed
git clone http://www.github.com/git/lua-seed.git
cd lua-seed

# If you would like to start a new project without any history of this project
Note that `depth=1` tells git to only pull down one commit worth of historical data
git clone --depth=1 https://www.github.com/mondwan/lua-seed.git
cd lua-seed
rm -fr .git/
```

* Edit meta data in cfg.ld

Project name, title and description etc

Those data affects output from ldoc.

* Start coding

    * Check out `src/example.lua` and try to code your application in a testable
    manner.

    * Checkout `test/test\_example.lua` and try to code test cases for your
    application.

# Directory layout

```
src/                   --> all of the source files for the application
doc/                   --> Beside this README, extra documents will be placed
                           here
test/                  --> Testcases, test data and all testing related stuff
                           will be placed here
test_all.lua           --> A simple script for running testcases
```

# Running test cases

[lunit][lunit] is the testing library we are using.

Besides manually run each testcases inside ```test/```, you can do this:

```
cd <PROJECT_ROOT>
lua test_all.lua

# Or through makefile
make test
```

Since lua is not good at doing filesystem operation, it is not easy to
*find* our codes during testing. That's why we need to `cd` to the project
root. So that we can inject our repository into the LUA_PATH.

[lunit]: https://github.com/dcurrie/lunit

# Documentation in doc/

Beside this README, we suggest you to place documentations into `doc/`.

Build document via below command

```
make doc
# Checkout HTML files under doc/
```

# Dependency

* lunit

Testing framework we are using

* ldoc

LDoc is a software documentation tool which automatically generates API
documentation out of source code comments (doc comments)
