require("imlua")
require("iuplua")
require("iupluaimglib")
require("iupluaim")
require("cdlua")
require("cdluaim")
require("iupluacd")
--it is just test
--initial widht and height
w=0
h=0

function open_file(canvas, filename)
  local image, err = im.FileImageLoadBitmap(filename, 0)
  if (image) then
    local dlg = iup.GetDialog(canvas)
    local canvas = dlg.canvas
    local config = canvas.config
    canvas.image = image
    iup.Update(canvas)
  end
end


config = iup.config{}
config.app_name = "test-1.1"
config:Load()

canvas = iup.canvas{
  config = config,
  dirty = nil,
}


function canvas:action()
  local image = canvas.image
  local canvas_width, canvas_height = string.match(canvas.drawsize,"(%d*)x(%d*)")
  local cd_canvas = canvas.cdCanvas

  cd_canvas:Activate()

  -- draw the background 
  --[[local background = config:GetVariableDef("Canvas", "Background", "255 255 255")
  local r, g, b = string.match(background, "(%d*) (%d*) (%d*)")
  cd_canvas:Background(cd.EncodeColor(r, g, b))
  cd_canvas:Clear()]]

  -- draw the image on the canvas 
  if (image) then
    image:cdCanvasPutImageRect(cd_canvas, w, h,50 , 50, 0, 0, 0, 0)
  end
  cd_canvas:Flush()
end

function canvas:map_cb()
  cd_canvas = cd.CreateCanvas(cd.IUPDBUFFER, canvas)
  canvas.cdCanvas = cd_canvas
end
--retrieves the CD canvas associated to IupCanvas control and destroys it
function canvas:unmap_cb()
  local cd_canvas = canvas.cdCanvas
  cd_canvas:Kill()
end

function canvas:button_cb(b, e, x, y, r)  
  local cd_canvas = canvas.cdCanvas
  cd_width,cd_height=cd_canvas:GetSize()
  w=x
  h=cd_height - y 
  canvas:action()
end


function canvas:dropfiles_cb(filename)
    open_file(canvas, filename)
end

vbox = iup.vbox{
  canvas,
}

dlg = iup.dialog{
  vbox,
  title = "test-1.1",
  size = "HALFxHALF",
  canvas = canvas,
  dropfiles_cb = canvas.dropfiles_cb,
}

-- show the dialog at the last position, with the last size
config:DialogShow(dlg, "MainWindow")

-- to be able to run this script inside another context
if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
  iup.Close()
end
