local config = {
	daily = "no", -- allow only one enter per day? (like in global Tibia)
	level = 100,
	storage = 30015
	}
	local entry =
	{
	{x = 1046, y = 1026, z = 10},
	{x = 1047, y = 1026, z = 10},
	{x = 1048, y = 1026, z = 10},
	{x = 1049, y = 1026, z = 10}
	}
	local destination =
	{
	{x = 1067, y = 1026, z = 10},
	{x = 1068, y = 1026, z = 10},
	{x = 1069, y = 1026, z = 10},
	{x = 1070, y = 1026, z = 10}
	}


config.daily = getBooleanFromString(config.daily)
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 1946) then
		if(config.daily) then
			doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
		else
			doTransformItem(item.uid, item.itemid - 1)
		end

		return true
	end

	if(item.itemid ~= 1945) then
		return true
	end

	local players = {}
	for _, position in ipairs(entry) do
		local pid = getTopCreature(position).uid
		if(pid == 0 or not isPlayer(pid) or getCreatureStorage(pid, config.storage) > 0 or getPlayerLevel(pid) < config.level) then
			doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
			return true
		end

		table.insert(players, pid)
	end

	for i, pid in ipairs(players) do
		doSendMagicEffect(entry[i], CONST_ME_POFF)
		doTeleportThing(pid, destination[i], false)
		doSendMagicEffect(destination[i], CONST_ME_ENERGYAREA)
	end

	doTransformItem(item.uid, item.itemid + 1)
	return true
end
