local Score = {}
Score.__index = Score

-- This functions polutes the global namespace
function table.shallow_clone(t)
	return { table.unpack(t) }
end

function Score:scores()
	return self.score_board
end

function Score:latest()
	return self.score_board[#self.score_board]
end

function Score:personal_best()
	local scores = table.shallow_clone(self.score_board)
	table.sort(scores, function(a, b)
		return a > b
	end)
	return scores[1]
end

function Score:personal_top_three()
	local scores = table.shallow_clone(self.score_board)
	table.sort(scores, function(a, b)
		return a > b
	end)
	return { table.unpack(scores, 1, 3) }
end

return function(scores)
	local new_score = {}
	new_score.score_board = scores
	setmetatable(new_score, Score)
	return new_score
end
