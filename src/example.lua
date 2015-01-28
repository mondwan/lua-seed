-- File: example.lua
-- Author: 'Mond Wan'
-- Email: 'mondwan@p2mt.com'
-- Github: 0
-- Description: Example for how to write lua so that it is testable

-- In order to not pollute global environment, wrap our functions, variables
-- etc into a table.
--
-- You may treat this as a class definition and return this class definition
local myClass = {}

function myClass:sum(a, b)
    -- Sum up 2 digits
    --
    -- @param a int
    -- @param b int
    -- @return int

    -- For simplicity, I don't do any argument validations here. However,
    -- for dealing with programmer errors like inputting invalid data type
    -- values, doing validations and failing fast are my recommendations.
    local ret = a + b

    return ret
end

return myClass
