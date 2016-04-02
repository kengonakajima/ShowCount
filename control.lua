require "util"
require "story"
require "defines"


    
script.on_event(defines.events.on_tick, function(event)

    if game.player.gui.top.countdisplay ~= nil then
        local sb_cnt = game.player.force.get_kill_count( "small-biter" )
        local mb_cnt = game.player.force.get_kill_count( "medium-biter" )    
        local bb_cnt = game.player.force.get_kill_count( "big-biter" )
        local bhb_cnt = game.player.force.get_kill_count( "behemoth-biter" )
        
        local ss_cnt = game.player.force.get_kill_count( "small-spitter" )
        local ms_cnt = game.player.force.get_kill_count( "medium-spitter" )    
        local bs_cnt = game.player.force.get_kill_count( "big-spitter" )
        local bhs_cnt = game.player.force.get_kill_count( "behemoth-spitter" )
        
        local swt_cnt = game.player.force.get_kill_count( "small-worm-turret" )
        local mwt_cnt = game.player.force.get_kill_count( "medium-worm-turret" )    
        local bwt_cnt = game.player.force.get_kill_count( "big-worm-turret" )
        game.player.print(sb_cnt)
        game.player.gui.top.countdisplay.caption = "Biters: " .. bhb_cnt .. "/" .. bb_cnt .. "/" .. mb_cnt .. "/" .. sb_cnt .. " Spitters: " .. bhs_cnt .. "/" .. bs_cnt .. "/" .. ms_cnt .. "/" .. ss_cnt .. " Turrets: " .. bwt_cnt .. "/" .. mwt_cnt .. "/" .. swt_cnt
    else
    	game.player.gui.top.add{ name = "countdisplay", type = "label", caption = "Counts", style="caption_label_style"}
    end

    
end)

script.on_init( function(event)    
	-- GUI

end)

script.on_event(defines.events.on_gui_click, function(event)

end)

