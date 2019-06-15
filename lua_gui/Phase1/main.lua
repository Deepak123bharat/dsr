require("imlua")
require("imlua_process")
require("iuplua")
require("iupluaimglib")
require("iupluaim")
require("cdlua")
require("iupluacd")
require("cdluaim")

canvas = {

	new = function( mode, gridx, gridy)
		t = {}
		for k, v in pairs(canvas) do
            t[k]=v
		end
		if mode == "DRAWING" then
		  	grid_x = gridx
		  	grid_y = gridy
            str = require("drawing")
            return str
		end

        if mode == "EDITOR" then 
            --something
            
           return t
		end
		
        -------** return ** -------
	end

}

str2 = canvas.new("DRAWING", 30, 40)

str = canvas.new("DRAWING", 20, 10)
print(str)


print(str2)