
function init()
	bvert = love.graphics.newImage("png/(16)border-vertical.png")
	bhorz = love.graphics.newImage("border-horizontal.png")
	bcorntr = love.graphics.newImage("border-corner-tr.png")
	bcorntl = love.graphics.newImage("border-corner-tl.png")
	bcornbr = love.graphics.newImage("border-corner-br.png")
	bcornbl = love.graphics.newImage("border-corner-bl.png")		
	
	tile = love.graphics.newImage("tilesz.png")
	love.window.setMode(640,480)

	BOTTOM = love.graphics.getHeight()-64
	TOP = love.graphics.getHeight()-love.graphics.getHeight()
	LEFT = love.graphics.getWidth()-love.graphics.getWidth()
end

function drawtiles_row(img, x, yconst, offset, step) 				--# Draw tiles rows at a times
	for x=x, love.graphics.getWidth()-offset, step
	do
		love.graphics.draw(img,x,yconst)
	end
end

function drawtiles_column(img, xconst, y, offset, step)				--# Draw tiles columns at a times
	for y=y, love.graphics.getHeight()-offset, step
	do
		love.graphics.draw(img, xconst,y)
	end
end

function drawtiles(img, x,y, offset, step)
	for x=x, love.graphics.getWidth()-offset,step
	do
		for y=y, love.graphics.getHeight()-offset,step 
		do
			love.graphics.draw(img,x,y)
		end
	end
	
end		

function fillscreen()
	love.graphics.rectangle("fill",0,0, 640,480)
end

function draw()
	fillscreen()	
	drawtiles(tile,32,32,64,32)					--draw rows & columns
	drawtiles_row(bhorz, 32, 0, 64, 32) 				--top row
	drawtiles_row(bhorz, 32, 480-32, 64, 32)			--bottom row
	drawtiles_column(bvert, 0, 32, 64, 32)				--left column
	drawtiles_column(bvert, 640-32, 32, 64, 32)			--right column

	love.graphics.draw(bcorntl,0,0)
	love.graphics.draw(bcorntr,640-32,0)
	love.graphics.draw(bcornbl,0,480-32)
	love.graphics.draw(bcornbr,640-32,480-32)
end

