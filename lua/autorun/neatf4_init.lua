if SERVER then
  return include("neatf4/init.lua")
else
  return include("neatf4/cl_init.lua")
end
