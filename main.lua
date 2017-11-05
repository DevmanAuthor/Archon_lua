require "sys"
require "game"


function love.load()
	game_load()
end


function love.draw()

	game_run()
	love.graphics.print('Hello World!', 0) 
	love.graphics.print( love.graphics.getWidth().." x "..love.graphics.getHeight(), 0, 480-16)
	drawrect(Arena.BOUNDS)
end

