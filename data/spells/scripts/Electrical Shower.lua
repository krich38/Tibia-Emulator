-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 1000ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat10_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{1, 0, 1, 0, 1},
{0, 0, 0, 0, 0},
{1, 0, 2, 0, 1},
{0, 0, 0, 0, 0},
{1, 0, 1, 0, 1}}))
setCombatFormula(combat10_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat10_Brush = {CONST_ANI_ENERGYBALL,0,2,-2,2,-2,-2,0,-2,2,-2,2,2,-2,0,2,0}

-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat0_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
setCombatFormula(combat0_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat0_Brush = {CONST_ANI_ENERGYBALL,0,1,-1,0,-1,1,-1,-1,0,-1,1,-1,1,0,1,1}

-- Areas/Combat for 2000ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat20_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{1, 0, 0, 1, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 1, 0, 0, 1}}))
setCombatFormula(combat20_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat20_Brush = {CONST_ANI_ENERGYBALL,0,3,-3,3,-3,0,3,3,3,0,3,-3,0,-3,-3,-3}

-- Areas/Combat for 3000ms
local combat30_Brush = createCombatObject()
setCombatParam(combat30_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat30_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat30_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat30_Brush,createCombatArea({{1, 0, 0, 0, 1, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 1, 0, 0, 0, 1}}))
setCombatFormula(combat30_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat30_Brush = {CONST_ANI_ENERGYBALL,0,4,-4,0,0,-4,4,0,-4,4,4,4,4,-4,-4,-4}

-- Areas/Combat for 4000ms
local combat40_Brush = createCombatObject()
setCombatParam(combat40_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat40_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat40_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat40_Brush,createCombatArea({{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1}}))
setCombatFormula(combat40_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat40_Brush = {CONST_ANI_ENERGYBALL,-5,5,0,5,5,5,5,-5,-5,-5,0,-5,-5,0,5,0}

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	addEvent(RunPart,1000,combat10_Brush,cid,var,dfcombat10_Brush,startPos)
	RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
	addEvent(RunPart,2000,combat20_Brush,cid,var,dfcombat20_Brush,startPos)
	addEvent(RunPart,3000,combat30_Brush,cid,var,dfcombat30_Brush,startPos)
	addEvent(RunPart,4000,combat40_Brush,cid,var,dfcombat40_Brush,startPos)
	return true
end