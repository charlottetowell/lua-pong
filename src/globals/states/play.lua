require "src/globals/states/init"

local playState = GameState:new({
    key = "PLAY"
    ,transition_to_key = "GAME_OVER"
})