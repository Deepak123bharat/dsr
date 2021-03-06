require("imlua")
require("imlua_process")
require("iuplua")
require("iupluaimglib")
require("iupluaim")
require("cdlua")
require("iupluacd")
require("cdluaim")


--********************************** Images *****************************************

function load_image_PaintBox()
  local PaintBox = iup.imagergba
  {
    width = 16,
    height = 16,
    pixels = {
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 254, 0, 0, 0, 247, 0, 0, 0, 239, 0, 0, 0, 247, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
    },
  }
  return PaintBox
end


function load_image_PaintLine()
  local PaintLine = iup.imagergba
  {
    width = 16,
    height = 16,
    pixels = {
      0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      0, 0, 0, 2, 0, 0, 0, 5, 0, 0, 0, 12, 0, 0, 0, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 239, 0, 0, 0, 60, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 227, 0, 0, 0, 8, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 16, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
    },
  }
  return PaintLine
end

function load_image_PaintEllipse()
  local PaintEllipse = iup.imagergba
  {
    width = 16,
    height = 16,
    pixels = {
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 20, 0, 0, 0, 84, 0, 0, 0, 128, 0, 0, 0, 128, 0, 0, 0, 84, 0, 0, 0, 20, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 16, 0, 0, 0, 155, 0, 0, 0, 239, 0, 0, 0, 175, 0, 0, 0, 131, 0, 0, 0, 131, 0, 0, 0, 175, 0, 0, 0, 239, 0, 0, 0, 155, 0, 0, 0, 16, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 24, 0, 0, 0, 215, 0, 0, 0, 143, 0, 0, 0, 16, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 16, 0, 0, 0, 143, 0, 0, 0, 215, 0, 0, 0, 24, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 199, 0, 0, 0, 120, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 120, 0, 0, 0, 199, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 0, 0, 0, 60, 0, 0, 0, 211, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 211, 0, 0, 0, 60, 255, 255, 255, 0, 
      255, 255, 255, 0, 0, 0, 0, 120, 0, 0, 0, 139, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 139, 0, 0, 0, 120, 255, 255, 255, 0, 
      255, 255, 255, 0, 0, 0, 0, 120, 0, 0, 0, 135, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 135, 0, 0, 0, 120, 255, 255, 255, 0, 
      255, 255, 255, 0, 0, 0, 0, 68, 0, 0, 0, 211, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 211, 0, 0, 0, 68, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 199, 0, 0, 0, 120, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 120, 0, 0, 0, 199, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 36, 0, 0, 0, 231, 0, 0, 0, 135, 0, 0, 0, 12, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 12, 0, 0, 0, 135, 0, 0, 0, 231, 0, 0, 0, 36, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 20, 0, 0, 0, 163, 0, 0, 0, 239, 0, 0, 0, 171, 0, 0, 0, 131, 0, 0, 0, 131, 0, 0, 0, 171, 0, 0, 0, 239, 0, 0, 0, 163, 0, 0, 0, 20, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 24, 0, 0, 0, 88, 0, 0, 0, 128, 0, 0, 0, 128, 0, 0, 0, 88, 0, 0, 0, 24, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
    },
  }
  return PaintEllipse
end

function load_image_PaintRect()
  local PaintRect = iup.imagergba
  {
    width = 16,
    height = 16,
    pixels = {
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 254, 0, 0, 0, 247, 0, 0, 0, 239, 0, 0, 0, 247, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
    },
  }
  return PaintRect
end

function load_image_PaintOval()
  local PaintOval = iup.imagergba
  {
    width = 16,
    height = 16,
    pixels = {
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 24, 0, 0, 0, 135, 0, 0, 0, 211, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 211, 0, 0, 0, 135, 0, 0, 0, 24, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 80, 0, 0, 0, 239, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 239, 0, 0, 0, 80, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 48, 0, 0, 0, 251, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 251, 0, 0, 0, 48, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 183, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 183, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 247, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 247, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 247, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 247, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 183, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 183, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 56, 0, 0, 0, 251, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 251, 0, 0, 0, 56, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 84, 0, 0, 0, 243, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 243, 0, 0, 0, 84, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 0, 0, 0, 24, 0, 0, 0, 139, 0, 0, 0, 211, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 211, 0, 0, 0, 139, 0, 0, 0, 24, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
      255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 
    },
  }
  return PaintOval
end





--********************************** Utilities *****************************************
notGrid = true
function check_new_file(dlg)
  local canvas = dlg.canvas
  local image = canvas.image
  local w, h = string.match(canvas.restersize,"(%d*)x(%d*)")
  print(w,h)
  if (not image) then
    local config = canvas.config
    local image = im.ImageCreate(1300, 700, im.RGB, im.BYTE)
    
    --fill new image with white color
    local i, j
    local r = image[0]
    local g = image[1]
    local b = image[2]
    for i = 0, image:Height()-1 do
      for j = 0, image:Width()-1 do
        r[i][j] = 255
        g[i][j] = 255
        b[i][j] = 255
      end
    end
    canvas.image = image

  end
end


function check_grid(start_x,end_x,start_y,end_y)
	if start_x%10~=0 or start_y%10~=0 then
		-- if start_x and start_y are not multiple of 10 then we have to adjust it
		-- first let start_x is not multiple of 10
		if start_x%10~=0 and start_x%10>=5 then
			start_x = start_x + (10 - start_x%10 )
		 -- if remdnder of start_x with 10 is greater then 5 then we will take upper bound     
		else
			start_x = start_x  - start_x%10 --else we will take lower bound
			--print(static_x)
		end
		-- start_y is not multiple of 10

		if start_y%10~=0 and start_y%10>=5 then
			start_y = start_y + (10 - start_y%10 )
		else
			start_y = start_y  - start_y%10 
		end
	end

	if end_x%10~=0 or end_y%10~=0 then
		if end_x%10~=0 and end_x%10>=5 then
			end_x = end_x + (10 - end_x%10 )
		else
			end_x = end_x  - end_x%10 
		end

		if end_y%10~=0 and end_y%10>=5 then
			end_y = end_y + (10 - end_y%10 )
		else
			end_y = end_y  - end_y%10 
		end
	end
	return start_x,end_x,start_y,end_y
end

function tool_draw_overlay(toolbox, cnv, s_x, s_y, e_x, e_y)
  start_x, end_x, start_y, end_y = check_grid(s_x, e_x, s_y, e_y)
  cnv:Foreground(cd.EncodeColor(0, 0, 255))
  --start_x, start_y, end_x, end_y = check_grid(start_x,start_y,end_x,end_y)
  if (canvas.overlay == "LINE") then
    cnv:Line(start_x, start_y, end_x, end_y)
  elseif (canvas.overlay == "GRID") then
    drawGrid(cnv)
  elseif (canvas.overlay == "RECT") then
    cnv:Rect(start_x, end_x, start_y, end_y)
  elseif (canvas.overlay == "BOX") then
    cnv:Box(start_x, end_x, start_y, end_y)
  elseif (canvas.overlay == "ELLIPSE") then
    cnv:Arc(math.floor((end_x + start_x) / 2), math.floor((end_y + start_y) / 2), math.abs(end_x - start_x), math.abs(end_y - start_y), 0, 360)
  elseif (canvas.overlay == "OVAL") then
    cnv:Sector(math.floor((end_x + start_x) / 2), math.floor((end_y + start_y) / 2), math.abs(end_x - start_x), math.abs(end_y - start_y), 0, 360)
  end
end

-- to draw grid
function drawGrid(cd_canvas)
  local w,h = cd_canvas:GetSize()
  local x,y
  --first for loop to draw horizontal
  cd_canvas:SetForeground(cd.EncodeColor(192,192,192))
  for y=h, 0, -10 do
    cd_canvas:Line(0,y,w,y)
  end
  -- for loop used to draw vertical line
  cd_canvas:SetForeground(cd.EncodeColor(192,192,192))
  for x=0, w,10 do
    cd_canvas:Line(x,0,x,h)
  end
end

--********************************** Main (Part 1/2) *****************************************

-- create all the elements that will have callbacks in Lua prior to callbacks definition

config = iup.config{}
config.app_name = "simple_paint"
config:Load()

canvas = iup.canvas{
   restersize = "600x400"
}
--********************************** Callbacks *****************************************


function canvas:action()
  local image = canvas.image
  
  local canvas_width, canvas_height = string.match(canvas.drawsize,"(%d*)x(%d*)")
  local cd_canvas = canvas.cdCanvas
  --print(canvas_width,canvas_height)
  canvas_width = tonumber(canvas_width)
  canvas_height = tonumber(canvas_height)
 
  cd_canvas:Activate()
  cd_canvas:Background(cd.EncodeColor(255, 255, 255))
  cd_canvas:Clear()
  
  -- draw the image at the center of the canvas 
  if (image) then
    cd_canvas:PutImImage(image, 0, 0, canvas_width, canvas_height)  
    if (canvas.overlay) then
      local start_x = tonumber(canvas.start_x)
      local start_y = tonumber(canvas.start_y)
      local end_x = tonumber(canvas.end_x)
      local end_y = tonumber(canvas.end_y)
      tool_draw_overlay(toolbox, cd_canvas, start_x, start_y, end_x, end_y)
    end
  end
  cd_canvas:Flush()
end

function canvas:map_cb()
  cd_canvas = cd.CreateCanvas(cd.IUPDBUFFER, canvas)
  canvas.cdCanvas = cd_canvas
end

function canvas:unmap_cb()
  local cd_canvas = canvas.cdCanvas
  cd_canvas:Kill()
end
    

function canvas:button_cb(button, pressed, x, y)
  local image = self.image
  local canvas_width, canvas_height = string.match(canvas.drawsize,"(%d*)x(%d*)")
  canvas_width = tonumber(canvas_width)
  canvas_height = tonumber(canvas_height)

  if (image) then
    y = canvas_height - y - 1
    if (button == iup.BUTTON1) then
      if (pressed == 1) then
        canvas.start_x = x
        canvas.start_y = y
      else
        local tool_index = tonumber(toolbox.toolindex)
        
        if (tool_index >= 1 and tool_index <= 6) then -- Shapes
          if (canvas.overlay) then
            local start_x = canvas.start_x
            local start_y = canvas.start_y
            --local res = tonumber(iup.GetGlobal("SCREENDPI")) / 25.4

            local rgb_canvas = cd.CreateCanvas(cd.IMIMAGE, image)
            --rgb_canvas:SetAttribute("RESOLUTION", res)
            --p, q, r, s = check_grid(start_x,start_y,x, y)
            tool_draw_overlay(toolbox, rgb_canvas, start_x, start_y, x, y)
              
            rgb_canvas:Kill()

            canvas.overlay = nil
            iup.Update(canvas)
          end
        end
      end
    end
  end
  return iup.DEFAULT
end

function canvas:motion_cb(x, y, status)
  local image = self.image
  local canvas_width, canvas_height = string.match(canvas.drawsize,"(%d*)x(%d*)")
  canvas_width = tonumber(canvas_width)
  canvas_height = tonumber(canvas_height)
  if (image) then

    -- y is top-down in IUP
    y = canvas_height - y - 1
    if (iup.isbutton1(status)) then -- button1 is pressed
      local tool_index = tonumber(toolbox.toolindex)          
      if (tool_index >= 1 and tool_index <= 7) then -- Shapes
        local shapes = {"GRID","LINE", "RECT", "BOX", "ELLIPSE", "OVAL"}
        self.end_x = tonumber(x)
        self.end_y = tonumber(y)
        self.overlay = shapes[tool_index]
        iup.Update(self)
      end
    end
  end
end

function tool_action_cb(ih, state)
  if (state == 1) then
    local tool_index = tonumber(ih.toolindex)
    toolbox.toolindex = tool_index
    canvas.cursor = "CROSS"
  end
end

--********************************** Main (Part 2/2) *****************************************


-- toolbox
gbox = iup.gridbox{
  iup.toggle{toolindex=1, image=load_image_PaintLine(), flat="Yes", tip="GRID", action = tool_action_cb},
  iup.toggle{toolindex=2, image=load_image_PaintLine(), flat="Yes", tip="Line", action = tool_action_cb},
  iup.toggle{toolindex=3, image=load_image_PaintRect(), flat="Yes", tip="Hollow Rectangle", action = tool_action_cb},
  iup.toggle{toolindex=4, image=load_image_PaintBox(), flat="Yes", tip="Box (Filled Rectangle)", action = tool_action_cb},
  iup.toggle{toolindex=5, image=load_image_PaintEllipse(), flat="Yes", tip="Hollow Ellipse", action = tool_action_cb},
  iup.toggle{toolindex=6, image=load_image_PaintOval(), flat="Yes", tip="Oval (Filled Ellipse)", action = tool_action_cb},
  
  gapcol = 5,
  gaplin = 5,
  margin = "20x20",
  numdiv = 3
}

vbox = iup.vbox{
  iup.radio{gbox}, 
  nmargin = "2x2",
  aligment = "ACENTER"
}

toolbox = iup.dialog{
  vbox,
  dialogframe = "Yes",
  title = "Elements",
  fontsize = 8,
  toolbox = "Yes",
  -- custom attributes
  toolcolor = "0 0 0",
  toolwidth = 1,
  toolstyle = 1,
  toolfilltol = 50,
  toolindex = 1,
}

--statusbar
statusbar = iup.hbox{
  iup.label{title = "(0, 0) = 0   0   0", expand="HORIZONTAL", padding="10x5", name="STATUSLABEL"},

  alignment = "ACENTER",
}

vbox = iup.vbox{
  toolbar,
  canvas,
  --statusbar
}

dlg = iup.dialog{
  vbox,
  title = "Simple Paint",
  size = "HALFxHALF",
  menu = menu,
  --close_cb = item_exit.action,
  canvas = canvas,
  dropfiles_cb = canvas.dropfiles_cb,
}

-- must be set after dlg was created
toolbox.parentdialog = dlg




-- parent for pre-defined dialogs in closed functions (IupMessage and IupAlarm)
iup.SetGlobal("PARENTDIALOG", iup.SetHandleName(dlg))

config:DialogShow(dlg, "MainWindow")
config:DialogShow(toolbox, "Toolbox")

-- initialize the current file, if not already loaded
check_new_file(dlg)

-- to be able to run this script inside another context
if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
  iup.Close()
end
