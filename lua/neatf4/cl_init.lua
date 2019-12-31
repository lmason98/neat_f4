neatf4 = { }
local sh = file.Find("neatf4/shared/*.lua", "LUA")
local cl = file.Find("neatf4/client/*.lua", "LUA")
for fl in pairs(sh) do
  include("shared/" .. fl)
end
include("neatf4_cfg.lua")
for fl in pairs(cl) do
  print(" FILE: client/" .. fl)
  inlude("client/" .. fl)
end
print(" [NEATF4]: Client and Shared files loaded.")
