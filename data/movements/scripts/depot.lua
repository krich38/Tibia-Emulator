function onStepIn(cid, item, position, fromPosition)
local poi = getPlayerStorageValue(cid, 13373)
if poi == 1 or getPlayerGroupId(cid) > 1 then
local newPosition = {x = 1003, y = 1003, z = 10}
local playerPosition = getPlayerPosition(cid)
if item.uid == 60000 then
doSendMagicEffect(playerPosition, 2)
doTeleportThing(cid, newPosition)
doSendMagicEffect(newPosition, 10)
end
else
doTeleportThing(cid,fromPosition, false)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You must complete the Pits of Inferno to be able to access the depot.")
return false
end
return true
end
