#!/usr/bin/lua

-- File: test_all.lua
-- Author: 'Mond Wan'
-- Email: 'mondwan@p2mt.com'
-- Github: 0
-- Description: Run testcases under test/

local lfs = require 'lfs'

-- Get current file path
local ROOT = lfs.currentdir()

-- Get default lua path
local SYSPATH = package.path

local path = string.format('%s/src/?.lua;%s', ROOT, SYSPATH)

-- print(path)

os.execute(
    string.format(
        'lunit -p "%s" %s/test/test_*',
        path,
        ROOT
    )
)
