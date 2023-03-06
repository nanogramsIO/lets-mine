-- Lets Mine! CC Turtle Mining Programs
-- Author: nanograms.io
-- Last Updated: 03 Mar 2023
-- File: lets_mine.lua
-- Description: This is the main, starting file for the program.
--              It will pull configs from a file or from user input
--              from the shell. After configs are loaded, mining will
--              begin.

require("general_utilities")

-- STEP 0: SET-UP

local currX = 0
local currY = 0
local currZ = 0
local yDiff

print("Hello... Lets Mine!")
print("----------------")
print("Loading configuration...")
local settings = {}
local f, err = loadfile(script_path() .. "config", "t", settings)
if f then
    f()
    settings = settings.settings -- un-nest the table
    if(pcall(confirm_settings, settings) == false) then
        print("ERROR: Problem confirming settings... Make sure its formatted properly!")
        return
    end
else
    error("ERROR: Problem opening config file... Make sure it exists!")
    return
end

print("Done loading configuration!")
print("----------------")

do
    local initY
    repeat
        print("What is the current Y level? Enter an integer!")
        initY = io.read()
    until is_int(tonumber(initY))
    yDiff = initY - settings.miningLevel
end

-- STEP 1: MINE DOWN


-- STEP 2: CREATE SPINE BASED OFF OF BRANCH SPECIFICATIONS


-- STEP 3: BRANCH MINE