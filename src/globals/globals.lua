WINDOW_WIDTH_PX = 600
WINDOW_HEIGHT_PX = 600

require "src/globals/states/menu"
require "src/globals/states/play"
require "src/globals/states/gameOver"

STATES = {
    [menuState.key] = menuState
    ,[playState.key] = playState
    ,[gameOverState.key] =gameOverState
}

CURRENT_STATE = STATES[menuState.key]