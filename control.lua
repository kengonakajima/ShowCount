require "util"
require "story"
require "defines"


    
script.on_event(defines.events.on_tick, function(event)
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
    
    game.player.gui.top.countdisplay.caption = "Biters: " .. tostring(bhb_cnt) .. "/" .. tostring(bb_cnt) .. "/" .. tostring(mb_cnt) .. "/" .. tostring(ss_cnt) .. " Spitters: " .. tostring(bhs_cnt) .. "/" .. tostring(bs_cnt) .. "/" .. tostring(ms_cnt) .. "/" .. tostring(ss_cnt) .. " Turrets: " .. tostring(bwt_cnt) .. "/" .. tostring(mwt_cnt) .. "/" .. tostring(swt_cnt)
end)

script.on_init( function(event)    
	-- GUI
	game.player.gui.top.add{ name = "countdisplay", type = "label", caption = "Counts", style="caption_label_style"}
end)

script.on_event(defines.events.on_gui_click, function(event)

end)

