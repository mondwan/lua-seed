--- Example lua script
--
-- An example for how to write lua so that it is easy to test and able to
-- generated APIs via LDOC
--
-- @author: Mond Wan
-- @module example

-- In order to not pollute global environment, wrap our functions, variables
-- etc into a table.
--
-- You may treat this as a class definition and return this class definition
local example = {}

--- Sum given 2 integer
-- @param a int
-- @param b int
-- @return int - Sum of a and b
function example:sum(a, b)
    -- For simplicity, I don't do any argument validations here. However,
    -- for dealing with programmer errors like inputting invalid data type
    -- values, doing validations and failing fast are my recommendations.
    local ret = a + b

    return ret
end

return example
