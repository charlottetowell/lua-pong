require "src/globals/states/init"

local playState = GameState:new({
    key = "GAME_OVER"
    ,transition_to_key = "MENU"
})