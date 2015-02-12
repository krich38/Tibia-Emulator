function onUse(cid, item, frompos, item2, topos)

if((getPlayerStorageValue(cid, 20232) >= 25 and getPlayerStorageValue(cid, 20230) ~= 1) or getPlayerGroupId(cid) > 1) then
	pos = getPlayerPosition(cid)
	setPlayerStorageValue(cid, 20230, 1)

--doTeleportThing(cid,{x = 1001, y = 992, z = 7})
--doSendMagicEffect({x = 1001, y = 992, z = 7},12)
doPlayerSendTextMessage(cid,22,'The account manager is still setting up shop. Check back soon!')

else
doPlayerSendTextMessage(cid,22,'You have not earned 25 kills, or you have already visited the account manager since your last death.')
end
return 1
end