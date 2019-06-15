
canvasObj = {
	mode = "",
	grid_x = 10, --default value
	grid_y = 10, --default value
	width = 100,
	height = 100, --default value
	cnv = nil,
	str = "",
	new = function(mode, gridx, gridy, width, height)
		local table = {}
		
		for k,v in pairs(canvasObj) do 
			table[k]=v 	
		end
		table.mode = mode
		table.grid_x = gridx
		table.grid_y = gridy
		table.width = width
		table.height = height
		return table
	end,
	
	drawObj = function(self,obj)
		if self.mode == "DRAWING" then
			print(self,obj)
			self.shape_name = obj
			shapeName = self.shape_name
			grid_x_size = self.grid_x
			grid_y_size = self.grid_y
			width, height = self.width, self.height
		    m = require("t2depen")
			self.cnv = m.cnv()
			return self.cnv
		else
			iup.Message("Error","you can draw only in drawing mode")
			return false
		end
		
	end,

	save = function(self)
		m = require("t2depen")
		self.str = m.save()
		return self.str 
	end,

	erase = function(self)
		self.mode = nil
		self.grid_x = nil
		self.grid_y = nil
		self.width = nil
		self.height = nil
		self.cnv = nil 
		self.str = nil 
		self.new = nil
		self.drawObj = nil
		self.save = nil
		--print(self.mode, self.grid_x,self.grid_y, self.width, self.height)
	end
}
return canvasObj
