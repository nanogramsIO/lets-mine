-- Lets Mine! CC Turtle Mining Programs
-- Author: nanograms.io
-- Last Updated: 03 Mar 2023
-- File: lets_mine.lua
-- Description: This is the main, starting file for the program.
--              It will pull configs from a file or from user input
--              from the shell. After configs are loaded, mining will
--              begin.

require("utilities")

print("Hello... Lets Mine!")
print("----------------")
print("Loading configuration...")

local settings = {}
local f, err = loadfile(script_path() .. "config", "t", settings)
if f then
    f()
    settings = settings.settings
end