function onUse(cid, item, fromPosition, itemEx, toPosition)

	if(getPlayerFlagValue(cid, PLAYERFLAG_CANNOTPICKUPITEM)) then
		return false
	end

		doRemoveItem(item.uid, 1) 
		doPlayerAddItem(cid, 5944, 50, true)
	return true
end
