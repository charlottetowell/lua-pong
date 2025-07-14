function drawGame()
    love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)

	--draw paddles
	love.graphics.rectangle("fill", leftPaddle.x, leftPaddle.y, leftPaddle.width, leftPaddle.height)
	love.graphics.rectangle("fill", rightPaddle.x, rightPaddle.y, rightPaddle.width, rightPaddle.height)
end