require "iuplua"
require "imlua"
require "iupluaim"
require "cdlua"
require "iupluacd"
require "cdluaim"


image = im.FileImageLoad("deepak.jpeg")
w = image:Width()+100
h = image:Height()+100
cnv = iup.canvas{rastersize = w.."x"..h, border= "NO"}
cnv.image = image -- store the new image in the IUP canvas as anattribute
function cnv:map_cb()
-- the CD canvas can only be created when the IUP canvas is mapped
self.canvas = cd.CreateCanvas(cd.IUP, self)
end

function cnv:action()
-- called everytime the IUP canvas needs to be repainted
self.canvas:Activate()
self.canvas:Clear()

self.image:cdCanvasPutImageRect(self.canvas, 0, 0, 0, 0, 0, 0, 0, 0)
self.canvas:Flush()
end
vbox=iup.vbox{cnv}
dlg = iup.dialog{vbox}
dlg:show()

if iup.MainLoopLevel()==0 then 
    iup.MainLoop()
    iup.Close()
end