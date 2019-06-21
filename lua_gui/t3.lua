refresh = function(cnvobj)
	print("Ha bhai")
	function cnvobj.cnv:action()
		canvas = cnvobj.cnv
		--local image = canvas.image
		
		local cd_canvas = canvas.cdCanvas
		local canvas_width, canvas_height = string.match(canvas.rastersize,"(%d*)x(%d*)")
		--local image = im.ImageCreate(canvas_width, canvas_height, im.RGB, im.BYTE)
		module.create_white_image_and_draw_grid_on_image(canvas,cnvobj)
		local image = canvas.image
		cd_canvas:Activate()
			--cd_canvas:Background(cd.EncodeColor(200, 0, 255))
		cd_canvas:Clear()
		
		cd_canvas:PutImImage(image, 0, 0, canvas_width, canvas_height)

		cd_canvas:Flush()
	end
	function cnvobj.cnv:map_cb()
		module.map_cb(self)
	end
	function cnvobj.cnv:unmap_cb()
		module.unmap_cb(self)
	end
	--cnvobj.cnv = iup.canvas{}
end,