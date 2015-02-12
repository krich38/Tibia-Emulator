function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5050 then
 	queststatus = getPlayerStorageValue(cid,5050)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found a Firewalker boots.")
 	doPlayerAddItem(cid,9933,1)
 	setPlayerStorageValue(cid,5050,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 