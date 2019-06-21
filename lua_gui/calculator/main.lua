-- GUI Application Main file

require("iuplua")
require("button")
require("structure")


iup.Map(GUI.mainDlg)
-- Manipulate the sizes of any elements here since all the Natural Sizes have been calculated by the Map function

-- Set the mainDlg user size to nil so that the show uses the Natural Size
GUI.mainDlg.size = nil
GUI.mainDlg:show()
GUI.mainDlg.minsize = GUI.mainDlg.rastersize	-- To limit the minimum size of the dialog to the natural size

-- to be able to run this script inside another context
if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
end
