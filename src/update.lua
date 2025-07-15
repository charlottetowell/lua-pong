isGameOver = false

function updateGame(dt)
    if isGameOver then return end

    require "src/ball/move"
    ball:move()

    require "src/ball/bounce"
    -- ball hits horizontal edge of screen (not a paddle)
    if (ball.x <= ball.width or ball.x >= (WINDOW_WIDTH_PX - ball.width)) then
        --paddles bounces
        if ball.x > players[2].paddle.x - ball.width and ball.y <= players[2].paddle.y + players[2].paddle.height and ball.y >= players[2].paddle.y - ball.height then
            ball:bounce()
        elseif ball.x < players[1].paddle.x + 5 and ball.y <= players[1].paddle.y + players[1].paddle.height and ball.y >= players[1].paddle.y - ball.height then
            ball:bounce()
        else
            -- game over
            require "src/ball/stop"
            ball:stop()
            print("GAME OVER")
            isGameOver = true
        end
    end

    -- ball hits vertical edge of screen (bounce)
    if (ball.y <= ball.height or ball.y >= (WINDOW_HEIGHT_PX - ball.height)) then
        ball.vel.y = ball.vel.y * -1
        ball.vel.x = math.random(15)
    end

    require "src/player/update"
    for i, player in ipairs(players) do
		player:update()
	end
end