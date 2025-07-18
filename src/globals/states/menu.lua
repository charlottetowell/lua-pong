require "src/globals/states/init"

local menuState = GameState:new({
    key = "MENU"
    ,transition_to_key = "PLAY"
})