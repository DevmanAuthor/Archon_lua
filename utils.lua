Object = require "classic"
------------------UTILITY FUNCTIONS------------------------------
function newarray(x,y)
	local array_to_return = {}
	for i=1,x do
		array_to_return[i] = {}
		for j = 1,y do
			array_to_return[i][j] = 0 
		end
	end
	array_to_return.max_x = x
	array_to_return.max_y = y
	return array_to_return
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

function drawgrid(img, x,y, offset, step)
	for x=x, love.graphics.getWidth()-offset,step
	do
		for y=y, love.graphics.getHeight()-offset,step 
		do
			love.graphics.draw(img,x,y)
		end
	end
end



--UTIL TABLES/STRUCTS/CLASSES---

--Rectangles
Rect = Object:extend()

function Rect:new(x,y,w,h)
self.x = x or 0
self.y = y or 0
self.w = w or 0
self.h = h or 0
end


--Points
Point = Object:extend()

function Point:new(x,y)
self.x = x or 0
self.y = y or 0
end



--debug---
	
function fillscreen(SCREEN)
	love.graphics.rectangle("line",0,0, SCREEN.w, SCREEN.h) --draw rectangle screen boundary
end

function drawrect(r)
	love.graphics.rectangle("line",r.x,r.y,r.w,r.h)
end

function draw_mouse()
	mouse_x =love.mouse.getX()
	mouse_y =love.mouse.getY()

	cursor = drawrect(Rect(mouse_x-3,mouse_y-3, 3,3))
end

function love.mousepressed(x,y, button)
	if button=="l" then
		print("mouse pressed at:",x,y)
	end
end




