function onLogout(cid)
	if getPlayerAccountId(cid) == 1 and getPlayerStorageValue(cid, 35351) > 0 then
		db.executeQuery("DELETE from `bounty_hunters` WHERE `sp_id` = "..getPlayerGUID(cid)..";")
	end
	return true
end
		