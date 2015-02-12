 local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_STUN)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, 0, 1.0, 0)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 500)
setConditionParam(condition, CONDITION_PARAM_SPEED, -999999)
setCombatCondition(combat, condition)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat2, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat2, COMBAT_FORMULA_SKILL, 0, 0, 1.0, 0)

function onUseWeapon(cid, var)
local target = getCreatureTarget(cid)

local chance = math.random(1,2)
if chance == 1 then
doCombat(cid, combat, var)
doSendAnimatedText(getPlayerPosition(target),"Stunned", TEXTCOLOR_YELLOW)
else
doCombat(cid, combat2, var)
end
end