function onAdvance(cid, skill, oldLevel, newLevel)
	if(skill == 8) then
	
		local advance = newLevel - oldLevel
		
		if(advance == 2) then
			advance = advance - 1
		elseif(advance == 3) then
			advance = advance - 2
		elseif(advance == 4) then
			advance = advance - 3
end
		
		advance = advance + oldLevel
		if(advance % 5) == 0 then
			doPlayerAddMagLevel(cid, 1)
		elseif(newLevel % 5) == 0 then
			doPlayerAddMagLevel(cid, 1)
		end
	end

return true
end