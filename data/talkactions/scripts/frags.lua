function onSay(cid, words, param, channel)
	local frags = getPlayerStorageValue(cid, 30233)
	if frags > 0 then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have " .. frags .. " frags.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have no frags.")
		end
	return true
end
