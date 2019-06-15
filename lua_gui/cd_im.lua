require "iuplua"
require"imlua"
require "iupluaim"
require"cdlua"
require "iupluacd"
require"cdluaim"
local image = im.ImageCreate(500, 500, im.RGB, im.BYTE)
local canvas1 = image:cdCreateCanvas() -- Creates a CD_IMAGERGB canvas
canvas=iup.canvas{rastersize="300x200"}

function canvas:map_cb()
	canvas = cd.CreateCanvas(cd.IUP, self)
end

function canvas:action()
    canvas:Activate()
    canvas:Background(cd.EncodeColor(255, 255, 255))
    canvas:Clear()
    fgcolor = cd.EncodeColor(0, 255, 0) -- red
    fgcolor = cd.EncodeAlpha(fgcolor, 50) -- semi transparent
    canvas:Foreground(fgcolor)
    canvas:Font("Times", cd.BOLD, 25)
    canvas:Text(150, 100, "Hello")
    canvas:Line(0,0,200,200)
    canvas:Flush()
    image:Save("new.bmp", "BMP")
end
vbox=iup.vbox{
    canvas,
    iup.button{
        title="Temp"
    }
}
dlg=iup.dialog{
    vbox,
    title="Shave shape"
}
dlg:show()


if iup.MainLoopLevel()==0 then
    iup.MainLoop()
    iup.Close()
end
