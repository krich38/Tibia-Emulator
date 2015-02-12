function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(getPlayerStorageValue(cid, 30015) > 0) then
		return doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "This door seems to be sealed against unwanted intruders.")
	end
	
	doTeleportThing(cid, toPosition, true)
	doTransformItem(item.uid, item.itemid + 1)
	return true
end