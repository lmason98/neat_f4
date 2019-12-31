neatf4 = { }
local sv = file.Find("neatf4/server/*.lua", "LUA")
local sh = file.Find("neatf4/shared/*.lua", "LUA")
local cl = file.Find("neatf4/client/*.lua", "LUA")
include("neatf4_cfg.lua")
for fl in pairs(sv) do
  include("server/" .. fl)
end
for fl in pairs(sh) do
  AddCSLuaFile("shared/" .. fl)
  include("shared/" .. fl)
end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("neatf4_cfg.lua")
for fl in pairs(cl) do
  AddCSLuaFile("client/" .. fl)
end
print(" [NEATF4]: Server files loaded, Client and Shared files marked for download.")
