function onUse(cid, item, fromPosition, itemEx, toPosition)
	 if item.uid == 65001 then
   		doTransformItem(item.uid, item.itemid + 1)
   	elseif item.uid == 65002 then
		doTransformItem(item.uid, item.itemid + 1)
	else
		return 0
   	end
	
	
	return true
end