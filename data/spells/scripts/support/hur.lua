local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 9900200000)
setConditionFormula(condition, 50.0, -99, 50.0, -99)

setCombatCondition(combat, condition)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "Arcane!", TEXTCOLOR_PURPLE)
	return doCombat(cid, combat, var)
end