-- Lets Mine! CC Turtle Mining Programs
-- Author: nanograms.io
-- Last Updated: 03 Mar 2023
-- File: installer.lua
-- Description: This is the installer file. It will check the current
--              directory for a "version_file". If the file exists and
--              contains the correct version number, the file will
--              not do anything. Otherwise, it will download all files
--              listed in the version_file.

require("utilities")

local res = http.get("https://pastebin.com/raw/yAyJwhq5")
local most_recent_version = split(res.readLine(), ":")[2]

local version_file = io.open(script_path() .. "version_file", "r")
if (version_file == nil) or 
   (split(version_file:read(), ":")[2] ~= most_recent_version) then
    if version_file ~= nil then
        version_file:close()
        shell.run("rm", "version_file")
    end

    print("You need the files! Downloading...")
    print("Getting file names...")
    local file_name_pairs = split(res.readLine(), ";")

    for k,v in pairs(file_name_pairs) do
        shell.run("pastebin", "get", split(v, ":")[2], split(v, ":")[1])
    end
end

print("You're at the latest version...")
print("Goodbye!")