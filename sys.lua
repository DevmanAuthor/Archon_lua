local System = {}
function sys_init()
	local i ="png/(16)"
	bvert = love.graphics.newImage(i.."border-vertical.png")
	bhorz = love.graphics.newImage(i.."border-horizontal.png")
	bcorntr = love.graphics.newImage(i.."border-corner-tr.png")
	bcorntl = love.graphics.newImage(i.."border-corner-tl.png")
	bcornbr = love.graphics.newImage(i.."border-corner-br.png")
	bcornbl = love.graphics.newImage(i.."border-corner-bl.png")		
	
	tile = love.graphics.newImage("tilesz.png")
	love.window.setMode(640,480)
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
	love.graphics.rectangle("line",0,0, 640,480)
end

function draw_arena()
	drawtiles(tile,32,32,64,32)					--draw rows & columns
	drawtiles_row(bhorz, 32, 16, 48, 16) 				--top row
	drawtiles_row(bhorz, 32, 480-32, 48, 16)			--bottom row
	drawtiles_column(bvert, 16, 32, 48, 16)				--left column
	drawtiles_column(bvert, 640-32, 32, 48, 16)			--right column
end

function draw_outline()
	love.graphics.draw(bcorntl,16,16) --top left
	love.graphics.draw(bcorntr,640-32,16) -- top right
	love.graphics.draw(bcornbl,16,480-32) -- bottom left
	love.graphics.draw(bcornbr,640-32,480-32) -- bottom right 
end

function draw_sys_view()
	fillscreen()	
	draw_arena()
	draw_outline()
end
