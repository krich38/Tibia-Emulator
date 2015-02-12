local storage = 20233
local reward = {
        item = 5944,
        count = 1
}
function onKill(cid, target)
if isPlayer(target) == TRUE then
if getPlayerIp(target) ~= getPlayerIp(cid) then
				local frags = math.max(0, getCreatureStorage(cid, storage)) + 1
				setPlayerStorageValue(cid, 20232, math.max(0, getCreatureStorage(cid, 20232)) + 1)
				setPlayerStorageValue(cid, storage, frags)
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have " .. frags .. " kills.")
				if getPlayerItemCount(cid, reward.item) > 0 then
					local item = getPlayerItemById(cid, true, reward.item)
					if item.type >= ITEMCOUNT_MAX then
						doPlayerAddItem(cid, reward.item, reward.count)
						doSendAnimatedText(getPlayerPosition(cid), "Frag!", TEXTCOLOR_RED)
					else
						doTransformItem(item.uid, reward.item, item.type + 1)
						doSendAnimatedText(getPlayerPosition(cid), "Frag!", TEXTCOLOR_RED)
					end
				else
				doPlayerAddItem(cid, reward.item, reward.count)
					doSendAnimatedText(getPlayerPosition(cid), "Frag!", TEXTCOLOR_RED)
				end
				
				if frags == 100 then
				local tcid = getPlayerGUID(cid)
				local result_plr = db.getResult("SELECT * FROM `bounty_hunters` WHERE `sp_id` = "..tcid..";")
	local current = 0
    if(result_plr:getID() ~= -1) then
		current = tonumber(result_plr:getDataInt("prize"))
		result_plr:free()
		end
					local newPrize = current + 25
					
										if newPrize >= 50 then
						
		local tmp = getCreatureOutfit(cid)
		tmp.lookType = 87

	doCreatureChangeOutfit(cid, tmp)
	end
					doCreatureSetSkullType(cid, SKULL_GREEN)
					doBroadcastMessage(getPlayerName(cid) .. " has reached 100 frags! Bounty is now " .. newPrize.." orbs.");
				elseif frags == 50 then
				local tcid = getPlayerGUID(cid)
				local result_plr = db.getResult("SELECT * FROM `bounty_hunters` WHERE `sp_id` = "..tcid..";")
	local current = 0
    if(result_plr:getID() ~= -1) then
		current = tonumber(result_plr:getDataInt("prize"))
		result_plr:free()
		end
					local newPrize = current + 15
					
										if newPrize >= 50 then
						
		local tmp = getCreatureOutfit(cid)
		tmp.lookType = 87

	doCreatureChangeOutfit(cid, tmp)
	end
					doCreatureSetSkullType(cid, SKULL_BLACK)
					doBroadcastMessage(getPlayerName(cid) .. " has reached 50 frags! Bounty is now " .. newPrize.." orbs.");
				elseif frags == 25 then
					local tcid = getPlayerGUID(cid)
				local result_plr = db.getResult("SELECT * FROM `bounty_hunters` WHERE `sp_id` = "..tcid..";")
	local current = 0
    if(result_plr:getID() ~= -1) then
		current = tonumber(result_plr:getDataInt("prize"))
		result_plr:free()
		end
					local newPrize = current + 5
				
					
										if newPrize >= 50 then
						
		local tmp = getCreatureOutfit(cid)
		setPlayerStorageValue(cid, 35352, tmp.lookType)
		tmp.lookType = 87
		print(tmp.lookType)
		

	doCreatureChangeOutfit(cid, tmp)
	end
	setPlayerStorageValue(cid, 35351, newPrize)
					doCreatureSetSkullType(cid, SKULL_RED)
					doBroadcastMessage(getPlayerName(cid) .. " has reached 25 frags! Bounty is now " ..newPrize.." orbs.");
				elseif frags == 15 then
					doCreatureSetSkullType(cid, SKULL_YELLOW)
						elseif frags == 5 then
					doCreatureSetSkullType(cid, SKULL_WHITE)
				end
				
				if (frags % 10) == 0 then
					doPlayerAddSoul(cid, 1)
				end


				
				setPlayerStorageValue(target, 20234, (math.max(0, getCreatureStorage(cid, 20234)) + 1))
		--end
		
	
---- BOUNTY HUNTERS START -----
pid = cid
pid2 = getPlayerGUID(target)
    local result_plr = db.getResult("SELECT * FROM `bounty_hunters` WHERE `sp_id` = "..pid2..";")
    if(result_plr:getID() ~= -1) then
    prize = tonumber(result_plr:getDataInt("prize"))
    bid = tonumber(result_plr:getDataInt("id"))
	result_plr:free()
    else
    prize = 0
	bid = 0
    end

if (bid ~= 0 and prize ~= 0 and not(getTileInfo(getCreaturePosition(cid)).pvp)) then
    db.executeQuery("DELETE FROM `tfs`.`bounty_hunters` WHERE `sp_id`  = "..pid2..";")
	setPlayerStorageValue(target, 35351, 0)

		doPlayerAddItem(cid,5944, prize)
		doBroadCastMessage(getPlayerNameByGUID(pid2) .. " collected the bounty of .. " .. prize .. " on " .. getPlayerNameByGUID(pid2) .. "!")
	
end	
---- BOUNTY HUNTERS END -----
end
end
return TRUE
end