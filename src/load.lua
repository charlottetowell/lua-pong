-- set window size
WINDOW_WIDTH_PX = 600
WINDOW_HEIGHT_PX = 600

leftPaddle = {}
rightPaddle = {}
ball = {}

leftPaddle.x = 0
leftPaddle.y = WINDOW_HEIGHT_PX / 2
leftPaddle.width = 20
leftPaddle.height = 200
rightPaddle.x = WINDOW_WIDTH_PX - 20
rightPaddle.y = WINDOW_HEIGHT_PX / 2
rightPaddle.width = 20
rightPaddle.height = 200

ball.x = WINDOW_WIDTH_PX / 2
ball.y = WINDOW_HEIGHT_PX / 2
ball.vel = {}
ball.vel.x = 8
ball.vel.y = 0
ball.height = 30
ball.width = 30

function loadGame()
    -- set the game title
    love.window.setTitle ("Post Delivery Game")

    -- set colours
    love.graphics.setNewFont(12)
    love.graphics.setColor(0,0,0)
    love.graphics.setBackgroundColor(255,255,255)
    
    -- set window size
    love.window.setMode( WINDOW_WIDTH_PX, WINDOW_HEIGHT_PX )

end