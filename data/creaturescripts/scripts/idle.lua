local config = {
	idleWarning = getConfigValue('idleWarningTime'),
	idleKick = getConfigValue('idleKickTime')
}

function onThink(cid, interval)
	if(getTileInfo(getCreaturePosition(cid)).nologout or getCreatureNoMove(cid) or
		getPlayerCustomFlagValue(cid, PLAYERCUSTOMFLAG_ALLOWIDLE)) then
		return true
	end

	local idleTime = getPlayerIdleTime(cid) + interval
	doPlayerSetIdleTime(cid, idleTime)
	if(config.idleKick > 0 and idleTime > config.idleKick and getTileInfo(getCreaturePosition(cid)).protection) then
		doSendAnimatedText(getPlayerPosition(cid),"AFK!!!!", math.random(01,255))
	end

	return true
end
