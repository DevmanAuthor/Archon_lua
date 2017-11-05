require "utils"

Arena=
{	
	BOUNDS = Rect(), 	
	CELL = {},
	tile = 
		{SIZE=32,
		 IMG=love.graphics.newImage("gfx/Viewport/tilesz.png")
		}
}

function Arena.set_bounds(r)
	Arena.BOUNDS = r
end

function Arena.init_CELL()
	Arena.CELL = newarray(Arena.BOUNDS.x / Arena.tile.SIZE, Arena.BOUNDS.y / Arena.tile.SIZE) 
end

function Arena.draw()
--	drawgrid(Arena.tile.IMG, Arena.tile.SIZE, Arena.tile.SIZE,64,Arena.tile.SIZE)	--play area being drawndraw grid
	
end


function Arena.init_grid()
	tx = 1
	ty = 1
	if Arena.checkgrid(Arena.tile,Arena.BOUNDS) then
		for i=Arena.BOUNDS.x, Arena.BOUNDS.w, Arena.tile.SIZE do
		tx = tx +1
			for j= Arena.BOUNDS.y, Arena.BOUNDS.h, Arena.tile.SIZE do
			ty = ty + 1
				Arena.CELL[tx][ty]= Point(i,j)			
				love.graphics.draw(Arena.tile.IMG, i,j)
			end
		end
	end
end 	
			

function Arena.checkgrid(tile, rect)
	if rect.w % tile.SIZE == 0 and rect.h % tile.SIZE == 0 then
		print (rect.w / tile.SIZE)	
		return rect.w / tile.SIZE
	else
		print("tile.SIZE and Rectangle bound mismatch")
		return false
	end
end


