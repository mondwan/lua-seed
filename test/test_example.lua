-- File: test_example.lua
-- Author: 'Mond Wan'
-- Email: 'mondwan@p2mt.com'
-- Github: 0
-- Description: Example for how to write testcases by using lunit

module('test_example', lunit.testcase, package.seeall)

-- Get the class definition
local MyClass = require 'example'

-- setup() will be run before every testcases
function setup()
    -- You may do class instantiation here
end

-- teardown() will be run after everytestcases
function teardown()
    -- Put clean up codes here
end

function test_sum()
    local ret = MyClass:sum(1, 2)
    assert_equal(3, ret)
end
