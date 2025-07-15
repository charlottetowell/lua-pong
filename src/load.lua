-- set window size
WINDOW_WIDTH_PX = 600
WINDOW_HEIGHT_PX = 600

players = {}


function loadGame()
    require "src/globals/globals"

    -- set the game title
    love.window.setTitle ("Post Delivery Game")

    -- set colours
    love.graphics.setNewFont(12)
    love.graphics.setColor(0,0,0)
    love.graphics.setBackgroundColor(255,255,255)
    
    -- set window size
    love.window.setMode( WINDOW_WIDTH_PX, WINDOW_HEIGHT_PX )

    -- init ball
    require "src/ball/init"
    ball = initBall()

    -- init players
    require "src/player/init"
    local numPlayers = 2
    for i=1,numPlayers do
      players[i] = initPlayer()
    end

end