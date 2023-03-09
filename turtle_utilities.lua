-- Lets Mine! CC Turtle Mining Programs
-- Author: nanograms.io
-- Last Updated: 03 Mar 2023
-- File: turtle_utilities.lua
-- Description: This module contains utility functions that specifically
--              extend turtle functionality. Functions dealing with
--              digging, movement, and other tutle functionalities are
--              defined here.

require("general_utilities")
require("graph")

local map = Graph:new()

-- Move to, without mining, an x, y, z position
--  curr is a table of current x, y, and z values
--  goal is a table of goal x, y, z values
function move_to(curr, goal)
    if not map.nodes[tostring(curr.currX)][tostring(curr.currZ)] then
        map:add_node(tostring(curr.currX), tostring(curr.currZ))
    end
    local final = {}
    while (table.concat(curr) ~= table.concat(goal)) do
        
    end
end

-- Mine directly to an x, y, z position
function mine_to()

end

-- Return to where the turtle was mining before
function return_to_mining()

end

-- Return to the dropoff chest

-- Dropoff items

-- Check for ignored items and drop them