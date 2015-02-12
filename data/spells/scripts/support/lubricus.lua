function knight(cid)
	doPlayerSetVocation(cid, 8)
end

function pala(cid)
	doPlayerSetVocation(cid, 7)
end
	
	local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_BUFF, true)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	local voc = getPlayerVocation(cid)
	if(voc == 7) then
		
		doPlayerSetVocation(cid, 11)
		addEvent(pala, 5000, cid)
	elseif(voc == 8) then
		doPlayerSetVocation(cid, 12)
		addEvent(knight, 5000, cid)
	end
	
	return doCombat(cid, combat, var)
end