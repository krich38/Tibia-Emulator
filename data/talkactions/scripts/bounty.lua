function onSay(cid, words, param)
if(param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Please use correct syntax when placing a bounty, e.g \"!hunt [nick],[orbs]\".")
		return TRUE
	end
	
	local t = string.explode(param, ",")
	if(not t[2]) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Please use correct syntax when placing a bounty, e.g \"!hunt [nick],[orbs]\".")
		return TRUE
	end
	
	local res = db.getResult("SELECT * FROM `players` WHERE `name` = '"..t[1].."';")
	if(not res) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This player doesn't exist.")		
		return TRUE
	end
	
	if(tonumber(res:getDataInt("group_id")) > 4) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cannot put a bounty on a staff member.")		
		return TRUE
	end
	local tmpcid = getCreatureByName(t[1])
	local online = isPlayer(tmpcid)
	
	if(tonumber(res:getDataInt("account_id")) == 1 and not online) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cannot put a bounty on an offline public character.")		
		return TRUE
	end
	
	local sp_id = tonumber(res:getDataInt("id"))
	
    local result_plr = db.getResult("SELECT * FROM `bounty_hunters` WHERE `sp_id` = "..sp_id..";")
	local current = 0
    if(result_plr:getID() ~= -1) then
		current = tonumber(result_plr:getDataInt("prize"))
		is = tonumber(result_plr:getDataInt("sp_id"))
		result_plr:free()
    else
		is = 0
    end
    prize = tonumber(t[2])

	if(prize == nil or prize < 1) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Please use correct syntax when placing a bounty, e.g \"!hunt [nick],[orbs]\".")
		return TRUE
	end
	
	if(prize >= 100000000000000000000) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Please use correct syntax when placing a bounty, e.g \"!hunt [nick],[orbs]\".")
		return TRUE
	elseif(prize < 20) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Minimum bounty that can be placed is 20 soul orbs.")
		return TRUE
	end
	
	
		if doPlayerRemoveItem(cid, 5944, prize) == TRUE then
			local newPrize = current + prize
			if current > 0 then
				db.executeQuery("UPDATE `tfs`.`bounty_hunters` SET `prize` = '"..newPrize.."' WHERE `bounty_hunters`.`sp_id` = "..sp_id..";")
			else
		    
				db.executeQuery("INSERT INTO `bounty_hunters` VALUES (NULL,"..getPlayerGUID(cid)..","..sp_id..","..newPrize..");")
			end
			doBroadcastMessage(getCreatureName(cid) .. " has placed a bounty of " .. prize .. " orbs on " .. t[1] .. ". Bounty is now " .. newPrize .." orbs!")	
			
		if online then
			
		
			
		if newPrize >= 50 then
			local tmp = getCreatureOutfit(tmpcid)
			setPlayerStorageValue(tmpcid, 35352, tmp.lookType)
			tmp.lookType = 87
			doCreatureChangeOutfit(tmpcid, tmp)
				
			
			
		end
		setPlayerStorageValue(tmpcid, 35351, newPrize)
		end

		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You haven't got enough money!")			
		end
	
	
	return 1
end