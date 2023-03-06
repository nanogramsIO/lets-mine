-- Lets Mine! CC Turtle Mining Programs
-- Author: nanograms.io
-- Last Updated: 03 Mar 2023
-- File: lets_mine.lua
-- Description: This file contains shared functions and variables
--              that are used throughout the mining program.

HELLO = "hello"
YES = {"y", "Y", "YES", "Yes", "yes"}
NO = {"n", "N", "NO", "No", "no"}

-- Check if input is an integer
function is_int(x)
   return (type(x) == "number") and (math.floor(x) == x)
end

-- Check of table tbl contains x
function table_contains(tbl, x)
    local found = false
    for _, v in pairs(tbl) do
        if v == x then
            found = true
        end
    end
    return found
end

-- Split inputstr into table at each sep
function split (inputstr, sep)
    if sep == nil then
       sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
       table.insert(t, str)
    end
    return t
 end

-- Get current script path
function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*/)")
end

-- Confirm configuration setting names and values
function confirm_settings(settings)
   assert(is_int(settings.miningLevel))
   assert(is_int(settings.branchLength))
   assert(is_int(settings.numBranches))
   assert(is_int(settings.keepCobble))
   assert(is_int(settings.keepDirt))
   assert(is_int(settings.keepGravel))
   assert(is_int(settings.keepSand))
   assert(is_int(settings.keepLogs))
end

--
-- DEBUGGING UTILITIES
--

-- Recursively print a table
function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end