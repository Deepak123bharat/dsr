
--********************************** Utilities *****************************************
local print = print
local iup = iup
local cd = cd 
local im = im 
local string = string
local tonumber = tonumber
local math = math
local M = {}
package.loaded[...] = M 
_ENV = M

local dataTableOfDrawnElement = {}
local i = 1
local grid_y=nil
local grid_x=nil
--print("grid size "..grid_x, grid_y)
local str = "{"
--local canvas = nil
--local canvas = iup.canvas{}
--canvas.rastersize=""

--If not any image then this function create a white image. and draw a grid on the image
local function create_white_image_and_draw_grid_on_image(canvas)
  
  local w, h = string.match(canvas.rastersize,"(%d*)x(%d*)")
  
  local cd_canvas = canvas.cdCanvas
  
  
   --create imimage
   local image = im.ImageCreate(w, h, im.RGB, im.BYTE)
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
   if image then
     local grid_canvas = cd.CreateCanvas(cd.IMIMAGE,image)
     drawGrid(grid_canvas,canvas)
     grid_canvas:Kill()
   end
  
end

 -- to draw grid
function drawGrid(cd_canvas,canvas)
  --local w,h = string.match(canvas.size,"(%d*)x(%d*)")
  local w,h = cd_canvas:GetSize()
  local x,y
  --first for loop to draw horizontal line
  cd_canvas:SetForeground(cd.EncodeColor(192,192,192))
  for y=0, h, grid_y do
    cd_canvas:Line(0,y,w,y)
  end
  -- for loop used to draw vertical line
  for x=0, w, grid_x do
    cd_canvas:Line(x,0,x,h)
  end
end



 --adjust x, or x should be multiple of 10
 function check_grid_x(x)
  if x%grid_x ~= 0 then   --if x is not multiple of 10 then we have to adjust it
    if x%grid_x >= grid_x/2 then   --upper bound 
      x = x + ( grid_x - x%grid_x )
    elseif x%grid_x < grid_x/2 then -- lower bound
      x = x - x%grid_x
    end
  end
  return x
end

function check_grid_y(y)
  if y%grid_y ~= 0 then   --if x is not multiple of 10 then we have to adjust it
    if y%grid_y >= grid_y/2 then   --upper bound 
      y = y + ( grid_y - y%grid_y )
    elseif y%grid_y < grid_y/2 then -- lower bound
      y = y - y%grid_y
    end
  end
  return y
end


--Used to Draw Shape
function DrawShape(cnv, start_x, start_y, end_x, end_y, shapeName)
  
  cnv:Foreground(cd.EncodeColor(0, 0, 255))
  canvas.shape = shapeName
  --print(canvas.shape, cnv, start_x, start_y, end_x, end_y)
  if (canvas.shape == "LINE") then
    cnv:Line(start_x, start_y, end_x, end_y)
  elseif (canvas.shape == "RECT") then
    cnv:Rect(start_x, end_x, start_y, end_y)
  elseif (canvas.shape == "FILLEDRECT") then
    cnv:Box(start_x, end_x, start_y, end_y)
  elseif (canvas.shape == "ELLIPSE") then
    cnv:Arc(math.floor((end_x + start_x) / 2), math.floor((end_y + start_y) / 2), math.abs(end_x - start_x), math.abs(end_y - start_y), 0, 360)
  elseif (canvas.shape == "FILLEDELLIPSE") then
    cnv:Sector(math.floor((end_x + start_x) / 2), math.floor((end_y + start_y) / 2), math.abs(end_x - start_x), math.abs(end_y - start_y), 0, 360)
  end
end



--********************************** End Utilities *****************************************




function action(canvas)
  local image = canvas.image
  local cd_canvas = canvas.cdCanvas

  local canvas_width, canvas_height = string.match(canvas.rastersize,"(%d*)x(%d*)")
  canvas_width = tonumber(canvas_width)
  canvas_height = tonumber(canvas_height)

  
  cd_canvas:Activate()
  cd_canvas:Background(cd.EncodeColor(255, 255, 255))
  cd_canvas:Clear()

  if (image) then
    cd_canvas:PutImImage(image, 0, 0, canvas_width, canvas_height)  
    if (canvas.shape) then
      local start_x = canvas.start_x
      local start_y = canvas.start_y
      local end_x = canvas.end_x
      local end_y = canvas.end_y
      
      start_x = check_grid_x(start_x)
      start_y = check_grid_y(start_y)
      end_x = check_grid_x(end_x)
      end_y = check_grid_y(end_y)
     
      DrawShape(cd_canvas, start_x, start_y, end_x, end_y, canvas.shape)
  
    end
  end
  cd_canvas:Flush()
end

function map_cb(canvas)
 local cd_canvas = cd.CreateCanvas(cd.IUP, canvas)
 canvas.cdCanvas = cd_canvas
end

function unmap_cb(canvas)
 local cd_canvas = canvas.cdCanvas
 cd_canvas:Kill()
end


function button_cb(canvas,button, pressed, x, y, shapeName)
  local image = canvas.image
 

  --To get canvas width and height
  
 local canvas_width, canvas_height = string.match(canvas.rastersize,"(%d*)x(%d*)")
 canvas_width = tonumber(canvas_width)
 canvas_height = tonumber(canvas_height)
  if (image) then
    
    y = canvas_height - y 
    --if button is pressed then simply set start_x and start_y
    if (button) then
      if (pressed == 1) then
        canvas.start_x = x
        canvas.start_y = y
        
      -- when mouse button is release then draw shape from starting point to end point
      else
        if (canvas.shape) then
        
          local temp_canvas = cd.CreateCanvas(cd.IMIMAGE, image)         
          local start_x = canvas.start_x
          local start_y = canvas.start_y
          start_x = check_grid_x(start_x)
          start_y = check_grid_y(start_y)
          x = check_grid_x(x)
          y = check_grid_y(y)
          

          DrawShape(temp_canvas, start_x, start_y, x, y,shapeName)
          --concatinate elements with str 
          dataTableOfDrawnElement.shape = shapeName
          dataTableOfDrawnElement.start_x = start_x
          dataTableOfDrawnElement.start_y = start_y
          dataTableOfDrawnElement.end_x = x 
          dataTableOfDrawnElement.end_y = y 
          str = str.."{obj='"..shapeName.."',stx="..start_x..",sty="..start_y..",enx="..x..",eny="..y.."},"  
   
          temp_canvas:Kill()

          canvas.shape = nil
          iup.Update(canvas)
        end
      end
    end
  end
end
 
function motion_cb(canvas,x, y, status, shapeName)
  local image = canvas.image
  
  local canvas_width, canvas_height = string.match(canvas.rastersize,"(%d*)x(%d*)")
  canvas_width = tonumber(canvas_width)
  canvas_height = tonumber(canvas_height)

  if (image) then
    y = canvas_height - y 
    if (iup.isbutton1(status)) then -- button1 is pressed 
      canvas.end_x = x
      canvas.end_y = y 
      canvas.shape = shapeName
      
      iup.Update(canvas)
    end
 end
end


--create_white_image_and_draw_grid_on_image(canvas)

function cnv()
  return canvas 
end
--module.cnv = cnv

function save()
  str = str:sub(1,-2)
  str = str.."}"
  print(dataTableOfDrawnElement)
  return str
end
--module.save = save

function newcanvas(grid_x_size, grid_y_size, width, height)
    grid_x = grid_x_size
    grid_y = grid_y_size
    canvas = iup.canvas{}
    canvas.rastersize=""..width.."x"..height..""
    create_white_image_and_draw_grid_on_image(canvas)
    return canvas
end
--module.newcanvas = newcanvas
