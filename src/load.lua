function loadGame()
    require "src/globals/globals"

    -- set the game title
    love.window.setTitle ("Pong")

    -- set colours
    love.graphics.setNewFont(12)
    love.graphics.setColor(0,0,0)
    love.graphics.setBackgroundColor(255,255,255)
    
    -- set window size
    love.window.setMode( WINDOW_WIDTH_PX, WINDOW_HEIGHT_PX )

    -- init ball
    require "src/ball/init"
    ball = Ball:new()

    -- init players
    require "src/player/init"
    local numPlayers = 2
    players = {}
    for i=1,numPlayers do
      print("Loading player" .. i)
      players[i] = Player:new(i)
    end

    -- load state registry
    require "src/globals/states/registry"
    
    -- load all game states to registry
    require "src/globals/states/menu"
    require "src/globals/states/play"
    require "src/globals/states/gameOver"

    --set initial game state
    StateRegistry:setCurrentState("MENU")

    print("Finish load")
end