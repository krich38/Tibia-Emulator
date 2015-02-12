function onCastSpell(cid, var) -- Spell by Cykotitan / edited by OTx
	local p = getThingPos(cid)
	if getTileInfo(p).protection then
		doCreatureSay(cid, 'You cannot summon in PZ!', TALKTYPE_ORANGE_1, false, cid, p)
		doSendMagicEffect(p, CONST_ME_POFF)
	elseif #getCreatureSummons(cid) == 2 then
		doPlayerSendCancel(cid, 'You can\'t have more than two summons.')
		doSendMagicEffect(p, CONST_ME_POFF)
		return false
	elseif #getCreatureSummons(cid) == 1 then
		if doSummonMonster(cid, "Fire Elemental") then
			doSendMagicEffect(p, CONST_ME_MAGIC_BLUE)
			doPlayerAddMana(cid, 450)
			return true
		else
			doPlayerSendDefaultCancel(cid, r)
		end
	else
		if doSummonMonster(cid, "Fire Elemental") and doSummonMonster(cid, "Fire Elemental") then
			doSendMagicEffect(p, CONST_ME_MAGIC_BLUE)
			
			return true
		else
			doPlayerSendDefaultCancel(cid, r)
		end
	end
	return true
end