local config = {
	daily = true, -- allow only one enter per day? (like in global Tibia)
	level = 100,
	storage = 30015,
	room = {
		{x = 33218, y = 31656, z = 13},
		{x = 33225, y = 31662, z = 13}
	},
	stand = {
		{x = 33225, y = 31671, z = 13},
		{x = 33224, y = 31671, z = 13},
		{x = 33223, y = 31671, z = 13},
		{x = 33222, y = 31671, z = 13}
	},
	destination = {
		{x = 33222, y = 31659, z = 13},
		{x = 33221, y = 31659, z = 13},
		{x = 33220, y = 31671, z = 13},
		{x = 33219, y = 31671, z = 13}
	},
	wall = {
		{x = 33225, y = 31659, z = 13}
	},
	rocks = {
		{x = 33219, y = 31657, z = 13},
		{x = 33221, y = 31657, z = 13},
		{x = 33219, y = 31659, z = 13},
		{x = 33220, y = 31659, z = 13},
		{x = 33221, y = 31659, z = 13},
		{x = 33222, y = 31659, z = 13},
		{x = 33223, y = 31659, z = 13},
		{x = 33224, y = 31659, z = 13},
		{x = 33220, y = 31661, z = 13},
		{x = 33222, y = 31661, z = 13}
	},
	demons = {
		{x = 33219, y = 31657, z = 13},
		{x = 33221, y = 31657, z = 13},
		{x = 33223, y = 31659, z = 13},
		{x = 33224, y = 31659, z = 13},
		{x = 33220, y = 31661, z = 13},
		{x = 33222, y = 31661, z = 13}
	}
}
 
local function areaCheck(area)
	local monsters, players = {}, {}
	for x = config.room[1].x, config.room[2].x do
		for y = config.room[1].y, config.room[2].y do
			local t = getThingfromPos({x=x, y=y, z=config.room[1].z, stackpos=253})
			if t.uid > 0 then
				if isPlayer(t.uid) then
					table.insert(players, t.uid)
				elseif isMonster(t.uid) then
					table.insert(monsters, t.uid)
				end
			end
		end
	end
	return monsters, players
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 1945 then
		if config.daily then
			return doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
		else
			local monsters, players = areaCheck(config.room)
			if #players > 0 then
				return doPlayerSendCancel(cid, "There are players inside, please be patient.")
			elseif #monsters > 0 then
				for _, k in pairs(monsters) do
					doRemoveCreature(k)
				end
			end
			
			for _, v in ipairs(config.rocks) do
				doCreateItem(1285, 1, v)
			end
			
			local closed, open = getTileItemById(config.wall[1], 5108), getTileItemById(config.wall[1], 5109)
			if(closed.uid > 0) then
				doTransformItem(closed.uid, 1025)
			elseif(open.uid > 0) then
				doTransformItem(open.uid, 1025)
			end
			
			doTransformItem(item.uid, item.itemid + 1)
		end
		return true
	end

	if(item.itemid ~= 1946) then
		return true
	end
	
	local players = {}
	for _, position in ipairs(config.stand) do
		local pid = getTopCreature(position).uid
		if(pid == 0 or not isPlayer(pid)) then
			return doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
		elseif(getPlayerStorageValue(pid, config.storage) > 0) then
			return doPlayerSendCancel(cid, "Someone has already completed this quest.")
		elseif(getPlayerLevel(pid) < config.level) then
			return doPlayerSendCancel(cid, "Someone is below level 100.")
		end
		
		table.insert(players, pid)
	end
	
	local stones = {}
	for _, v in ipairs(config.rocks) do
		local st = getTileItemById(v, 1285)
		table.insert(stones, st)
	end

	for _, st in ipairs(stones) do
		doRemoveItem(st.uid, 1)
	end
	
	local wall = getTileItemById(config.wall[1], 1025)
	if(wall.uid > 0) then
		doTransformItem(wall.uid, 5108)
	end
	
	for _, pos in ipairs(config.demons) do
		doSummonCreature("Demon", pos, false, false)
		doSendMagicEffect(pos, CONST_ME_ENERGYAREA)
	end

	for i, pid in ipairs(players) do
		doSendMagicEffect(config.stand[i], CONST_ME_POFF)
		doTeleportThing(pid, config.destination[i], false)
		doSendMagicEffect(config.destination[i], CONST_ME_TELEPORT)
	end
	
	doTransformItem(item.uid, item.itemid - 1)
	return true
end