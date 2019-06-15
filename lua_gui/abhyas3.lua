--First of all drope the image on canvas
--You can see droped image on left botton corner

require("imlua")
require("iuplua")
require("iupluaimglib")
require("iupluaim")
require("cdlua")
require("cdluaim")       
require("iupluacd")

--initial widht and height
image_xpos=1200
image_ypos=480
saveVar=false
drawPath=false

-- load image using im or open image
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
--set configration
config = iup.config{}
config.app_name = "test-1.1"
config:Load()

btnSave=iup.button{title="Save"}

canvas = iup.canvas{
  border = "YES",
  dirty = nil,
  
}

vbox = iup.vbox{
  canvas,
  btnSave
}

--main dialog
dlg = iup.dialog{
  vbox,
  title = "test-1.1",
  size = "HALFxHALF",
  canvas = canvas,
  cursor="CROSS",
  dropfiles_cb = canvas.dropfiles_cb,
}

--responsible for drawing the image on canvas

function canvas:action()
  canvas:resize_cb(dlg)
  
  local image = canvas.image
  local cd_canvas = canvas.cdCanvas
  cd_canvas:Activate()

 
  -- draw the background 
  local r, g, b =192, 192, 192
  cd_canvas:Background(cd.EncodeColor(r, g, b))
  cd_canvas:Clear()
  
  image_xpos=math.floor(image_xpos/4)
  image_ypos=math.floor(image_ypos/4)

  --to drow the line
  cd_canvas:Foreground(cd.EncodeColor(255, 32, 140))
  cd_canvas:Line(0,image_ypos*4,image_xpos*2,image_ypos*2)
   
  cd_canvas:Foreground (cd.BLUE)
  
  -- draw the image on the canvas 
  
  if (image) then
    image:cdCanvasPutImageRect(cd_canvas, image_xpos, image_ypos, image_xpos*2 , image_ypos*2, 0, 0, 0, 0)
  end
  
  cd_canvas:Flush()
end


--responsible for creating the CD canvas
function canvas:map_cb()
  cd_canvas = cd.CreateCanvas(cd.IUPDBUFFER, canvas)
  canvas.cdCanvas = cd_canvas
end


--retrieves the CD canvas associated to IupCanvas control and destroys it
function canvas:unmap_cb()
  local cd_canvas = canvas.cdCanvas
  cd_canvas:Kill()
end

--To change possition of image when mouse button is pressed
function canvas:button_cb(b, e, x, y, r)  
  print("button="..b.." pressed="..e.." x="..x.." y="..y)
end

function canvas:resize_cb()
  local cd_canvas=canvas.cdCanvas
  new_image(dlg)
  local w,h = cd_canvas:GetSize()
  print(w,h)
  image_xpos=w 
  image_ypos=h
end

--to save the current image
function btnSave:action() 
    local image=canvas.image
    
     if image then
        err = im.FileImageSave("kkr.jpeg","JPEG",image)
    end
end


--Used to open droped image
function canvas:dropfiles_cb(filename)
    open_file(canvas, filename)
end

function image_fill_white(image,iw,ih)
  local x, y
  local r = image[0]
  local g = image[1]
  local b = image[2]
  for y = 0, ih-1 do
    local r_line = r[y]
    local g_line = g[y]
    local b_line = b[y]
    for x = 0, iw-1 do
      r_line[x] = 255
      g_line[x] = 255
      b_line[x] = 255
    end
  end
end

--to check new image. if new image then put black image on canvas
function new_image(dlg)
    local canvas = dlg.canvas
    local image = canvas.image
    if (not image) then
       
        ---local cd_canvas = canvas.cdCanvas
        local iw,ih=cd_canvas:GetSize()
        
  
        local image = im.ImageCreate(iw, ih, im.RGB, im.BYTE)
        
        image_fill_white(image,iw,ih)

        local old_image = canvas.image

        canvas.image = image
  
        iup.Update(canvas)
  
        if (old_image) then
            old_image:Destroy()
        end
    end
end



-- show the dialog at the last position

dlg:show()
canvas:resize_cb()
--new_image(dlg)
-- to be able to run this script inside another context
if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
  iup.Close()
end