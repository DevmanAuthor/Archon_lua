require "ui"
require "arena"
require "utils"

System={}

SCREEN_BOUNDS = nil

--loading section--
function sys_init(w,h)
	SCREEN_BOUNDS = Rect(0,0,w,h)
	love.window.setMode(SCREEN_BOUNDS.w,SCREEN_BOUNDS.h)
	Arena.set_bounds(Rect(SCREEN_BOUNDS.x+32, SCREEN_BOUNDS.y+32, SCREEN_BOUNDS.w-64, SCREEN_BOUNDS.h-64))
	Arena.init_CELL()
end
-------------------

function debug_all()
	print("Screen Bounds:",SCREEN_BOUNDS.w, SCREEN_BOUNDS.h)
	print("Arena Bounds:", Arena.BOUNDS.x, Arena.BOUNDS.y, Arena.BOUNDS.w, Arena.BOUNDS.h)


	NOK = Rect()
	print("debug object NOK-Rectangle:",NOK.w, NOK.h)
end




--mainfunctions
function draw_sys()
	Arena.draw()
	Outline.draw()
end
----------------
