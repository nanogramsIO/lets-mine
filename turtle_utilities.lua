-- Lets Mine! CC Turtle Mining Programs
-- Author: nanograms.io
-- Last Updated: 03 Mar 2023
-- File: turtle_utilities.lua
-- Description: This module contains utility functions that specifically
--              extend turtle functionality. Functions dealing with
--              digging, movement, and other tutle functionalities are
--              defined here.

require("general_utilities")

-- Go to a x, y, z position
--  curr is a table of current x, y, and z values
--  goal is a table of goal x, y, z values
function go_to(curr, goal)
    local final = {}
    while (table.concat(curr) ~= table.concat(goal)) do
        -- try y
        if curr.y < goal.y then
        
        elseif curr.y > goal.y then

        end
        -- try x
        if curr.x < goal.x then
        
        elseif curr.x > goal.x then
            
        end
        -- try z
        if curr.z < goal.z then
        
        elseif curr.z > goal.z then
            
        end
        -- go y if no other path

        -- go x if no other path

        -- go z if no other path
    end
end

-- Return to where the turtle was mining before
function return_to_mining()

end

-- Return to the dropoff chest

-- Dropoff items

-- Check for ignored items and drop them