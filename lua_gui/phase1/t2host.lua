require("imlua")
require("imlua_process")
require("iuplua")
require("iupluaimglib")
require("iupluaim")
require("cdlua")
require("iupluacd")
require("cdluaim")

-------------<<<<<<<<<<< ##### LuaTerminal ##### >>>>>>>>>>>>>-------------
require("iuplua_scintilla")
LT = require("LuaTerminal")
LT.USESCINTILLA = true

-- Create terminal
newterm = LT.newTerm(_ENV,true,"testlog.txt")

--print("newterm: ", newterm)
LTbox = iup.vbox{newterm}

LTdlg = iup.dialog{LTbox; title="LuaTerminal", size="QUARTERxQUARTER"}
LTdlg:showxy(iup.RIGHT, iup.RIGHT)
-------------<<<<<<<<<<< ##### LuaTerminal End ##### >>>>>>>>>>>>>-------------



LGL = require("t2")
cnvobj1 = LGL.new("DRAWING", 20, 20, 200, 200)  
cnvobj2=  LGL.new("DRAWING", 15, 15, 200, 200)


--cnvobj1:erase()
--cnv1 = cnvobj1:drawObj("ELLIPSE")

--cnv2 = cnvobj2:drawObj("LINE")

dlg = iup.dialog{
    iup.vbox{
        iup.button{title = "----------------Canvas1---------------"},
        cnvobj1.cnv,
        iup.button{title = "----------------Canvas2---------------"},
        cnvobj2.cnv,
    },
    title="Phase1",
    canvas=cnv1,
    
}

--dlg1:show()
dlg:showxy(iup.CENTER, iup.CENTER)

if iup.MainLoopLevel()==0 then
    iup.MainLoop()
    iup.Close()
end

st1 = cnvobj1:save()
print("string = "..st1)


