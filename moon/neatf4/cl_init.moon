export neatf4 = {}

sh = file.Find "neatf4/shared/*.lua", "LUA"
cl = file.Find "neatf4/client/*.lua", "LUA"

-- load shared files
include "shared/" .. fl for fl in pairs sh

-- load client files
include "neatf4_cfg.lua"
for fl in pairs cl
    print " FILE: client/" .. fl
    inlude "client/" .. fl
--include "client/" .. fl for fl in pairs cl

print " [NEATF4]: Client and Shared files loaded."
return
