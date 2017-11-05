	


Outline =
{

	BLOCK_SIZE=16,	
	bvert = love.graphics.newImage( "gfx/Viewport/border-vertical.png"),
	bhorz = love.graphics.newImage("gfx/Viewport/border-horizontal.png"),
	bcorntr = love.graphics.newImage("gfx/Viewport/border-corner-tr.png"),
	bcorntl = love.graphics.newImage("gfx/Viewport/border-corner-tl.png"),
	bcornbr = love.graphics.newImage("gfx/Viewport/border-corner-br.png"),
	bcornbl = love.graphics.newImage("gfx/Viewport/border-corner-bl.png"),		
		

}

function Outline:draw()
	drawtiles_row(Outline.bhorz, 32, Outline.BLOCK_SIZE, 48, Outline.BLOCK_SIZE) 		--top row
	drawtiles_row(Outline.bhorz, 32, 480-32, 48, Outline.BLOCK_SIZE)			--bottom row
	drawtiles_column(Outline.bvert, Outline.BLOCK_SIZE, 32, 48, Outline.BLOCK_SIZE)		--left column
	drawtiles_column(Outline.bvert, 640-32, 32, 48, Outline.BLOCK_SIZE)			--right column

	love.graphics.draw(Outline.bcorntl,16,16) --top left corner
	love.graphics.draw(Outline.bcorntr,640-32,16) -- top right corner
	love.graphics.draw(Outline.bcornbl,16,480-32) -- bottom left corner
	love.graphics.draw(Outline.bcornbr,640-32,480-32) -- bottom right corner
end

