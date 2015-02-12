local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2, -10, -3, -10, 10, 10, 10, 10)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
