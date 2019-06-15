require "iuplua"  --require("iuplua")

iup.Message("First Gui","hello world")

if (iup.MainLoopLevel()==0) then 
   iup.MainLoop()
end
