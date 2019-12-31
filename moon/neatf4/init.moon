export neatf4 = {}

sv = file.Find "neatf4/server/*.lua", "LUA"
sh = file.Find "neatf4/shared/*.lua", "LUA"
cl = file.Find "neatf4/client/*.lua", "LUA"

-- load server files
include "neatf4_cfg.lua"
include "server/" .. fl for fl in pairs sv

-- mark shared files for download/load shared files
for fl in pairs sh
    AddCSLuaFile "shared/" .. fl
    include "shared/" .. fl

-- mark client files for download
AddCSLuaFile "cl_init.lua"
AddCSLuaFile "neatf4_cfg.lua"
AddCSLuaFile "client/" .. fl for fl in pairs cl

print " [NEATF4]: Server files loaded, Client and Shared files marked for download."
return
