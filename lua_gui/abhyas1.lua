require "iuplua"
require "cdlua"
require "iupluacd"
require "imlua"
require "iupluaim"
require "cdluaim"

canvas=iup.canvas{size="300x200", border="YES", restersize="300x200"}
btn=iup.button{title = "ok"}

print(canvas)

dlg= iup.dialog{
    iup.vbox{
        canvas,
        btn
    },
    title="hello",
    size="400x300"
}

function canvas:map_cb()
    cdcanvas=cd.CreateCanvas(cd.IUP,self)
    --cdcanvas=cd.CreateCanvas(cd.DBUFFER,cdcanvas)
end

function canvas:action()
    cdcanvas:Activate()
    cdcanvas:SetBackground(cd.EncodeColor(0,255,0))
    cdcanvas:Clear()
    cdcanvas:SetForeground(cd.EncodeColor(255,0,0))
    cdcanvas:Line(0,0,100,100)
    cdcanvas:SetForeground(cd.EncodeColor(0,0,255))
    cdcanvas:MarkType(cd.PLUS)
    cdcanvas:Mark(102,102)
    
    cdcanvas:Flush()

end



dlg:show()

if iup.MainLoopLevel()==0 then 
    iup.MainLoop()
    iup.Close()
end