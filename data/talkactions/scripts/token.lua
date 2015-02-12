local config = {
	teleportAccess = 3
}

function onSay(cid, words, param, channel)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return true
	end

	local player = getPlayerByNameWildcard(param)
	print(player)
	setPlayerStorageValue(player,45351,getPlayerStorageValue(player, 45351)+1)
	return true
end
