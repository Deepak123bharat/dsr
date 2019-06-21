-- GUI Application Main file

require("iuplua")

require("structure")
require("callback")
require("utilities")


iup.Map(GUI.dlg)
-- Manipulate the sizes of any elements here since all the Natural Sizes have been calculated by the Map function

-- Set the mainDlg user size to nil so that the show uses the Natural Size
GUI.dlg.size = nil


GUI.dlg:show()
GUI.dlg.minsize = GUI.dlg.rastersize	-- To limit the minimum size of the dialog to the natural size
--iup.Show(iup.LayoutDialog(GUI.mainDlg))


if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
end
