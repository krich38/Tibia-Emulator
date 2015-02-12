local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
	end

	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end
	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "GuildMotd")
	registerCreatureEvent(cid, "Frag")
	registerCreatureEvent(cid, "KdrLook")
	setPlayerStorageValue(cid, 20232, 0)
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "Logout")
	registerCreatureEvent(cid, "Outfit")
registerCreatureEvent(cid, "Mlevel")
	registerCreatureEvent(cid, "DeathOutfit")

	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid, "AdvanceSave")
	
	if getPlayerAccountId(cid) > 1 then
		local result_plr = db.getResult("SELECT `prize` FROM `bounty_hunters` WHERE `sp_id` = "..getPlayerGUID(cid)..";")
		if(result_plr:getID() ~= -1) then
			local prize = tonumber(result_plr:getDataInt("prize"))
			if prize >= 50 then
				local tmp = getCreatureOutfit(cid)
				tmp.lookType = 87

				doCreatureChangeOutfit(cid, tmp)
	
			end
			doPlayerSetStorageValue(cid, 35351, prize)
			doPlayerSendTextMessage(cid, 22, "You have a bounty of " .. prize .. " orbs on you!")	
			result_plr:free()		
		end
	end

	
   	
		return true
end
