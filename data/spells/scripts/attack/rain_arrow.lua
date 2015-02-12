local combat1 = createCombatObject()
setCombatFormula(combat1, COMBAT_FORMULA_SKILL, 0, 0, 0, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat2, COMBAT_FORMULA_SKILL, 0, -20, 0.5, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat3, COMBAT_FORMULA_SKILL, 0, -100, 0.6, 0)


local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
doCombat(parameters.cid, parameters.combat3, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3}

if getPlayerItemCount(cid, 2544) < 3 then
doPlayerSendTextMessage(cid, 26, "I need 3 arrows to cast spell")
else
if getPlayerItemCount(cid, 2544) >= 3 then
if getPlayerLevel(cid) < 20 then
doPlayerRemoveItem(cid, 2544, 3)
addEvent(onCastSpell2, 0, parameters)
addEvent(onCastSpell2, 100, parameters)
else
if getPlayerItemCount(cid, 2544) >= 4 then
if getPlayerLevel(cid) >= 50 then
doPlayerRemoveItem(cid, 2544, 4)
addEvent(onCastSpell2, 0, parameters)
addEvent(onCastSpell2, 300, parameters)
addEvent(onCastSpell2, 600, parameters)
addEvent(onCastSpell3, 1500, parameters)
else
if getPlayerItemCount(cid, 2544) >= 3 then
if getPlayerLevel(cid) <= 49 then
doPlayerRemoveItem(cid, 2544, 3)
addEvent(onCastSpell2, 0, parameters)
addEvent(onCastSpell2, 100, parameters)
addEvent(onCastSpell2, 200, parameters)



end
end
end
end
end
end
end

return doCombat(cid, combat1, var)
end