function onPrepareDeath(cid, deathList)
	if getPlayerStorageValue(cid, 35351) >= 50 then
		local pre = getPlayerStorageValue(cid, 35352)
		local tmp = getCreatureOutfit(cid)
		tmp.lookType = pre
		doCreatureChangeOutfit(cid, tmp)
	end
	return true
end
