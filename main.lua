function love.draw()
    love.graphics.print('Hello World!', 400, 300)
end

function love.load()
   love.graphics.setNewFont(12)
   love.graphics.setColor(0,0,0)
   love.graphics.setBackgroundColor(255,255,255)
end

function love.focus(f) gameIsPaused = not f end

function love.update(dt)
	if gameIsPaused then return end

	-- The rest of your love.update code goes here
end

function love.quit()
  print("Thanks for playing! Come back soon!")
end