function onUse(cid, item, fromPosition, itemEx, toPosition)
   	if item.uid == 3001 then
		helm = getPlayerStorageValue(cid,6074)
   		if helm == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a demon helmet.")
   			doPlayerAddItem(cid,2493,1)
   			setPlayerStorageValue(cid,6074,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 3002 then
		boots = getPlayerStorageValue(cid,6075)
   		if boots == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found steel boots.")
   			doPlayerAddItem(cid,2645,1)
   			setPlayerStorageValue(cid,6075,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 3003 then
		shield = getPlayerStorageValue(cid,6076)
   		if shield == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a demon shield.")
   			doPlayerAddItem(cid,2520,1)
   			setPlayerStorageValue(cid,6076,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	end
   	return 1
end
