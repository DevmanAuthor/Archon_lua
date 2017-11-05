require "sys" 
function game_load()
	
	sys_init(640, 480)

	debug_all()
end

function game_run()
	
	draw_sys()
	draw_mouse()
end
