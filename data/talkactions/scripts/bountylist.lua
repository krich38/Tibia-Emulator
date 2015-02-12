function onSay(cid, words, param)
	local ta = db.getResult("SELECT * FROM `bounty_hunters` ORDER BY `prize` DESC ")

	local msg = "Bounty Hunters List (descending prize)\n"
	for i =1,ta:getRows() do
		local sp_id = result.getDataInt(ta, "sp_id")
		local prize = result.getDataInt(ta, "prize")
		local player_name = getPlayerNameByGUID(sp_id)
		msg = msg .. player_name .. " (" .. prize .. " orbs)\n"
		ta:next()
	end
	doPlayerPopupFYI(cid, msg)
	return true
end