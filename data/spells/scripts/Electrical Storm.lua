-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat0_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{1, 0, 1, 0, 1, 2, 1, 0, 1, 0, 1},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}}))
setCombatFormula(combat0_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat0_Brush = {CONST_ANI_ENERGYBALL,0,-5,1,0,3,0,5,0,0,-3,0,-1,-5,0,-3,0,-1,0,0,5,0,3,0,1}

-- Areas/Combat for 1000ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat10_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 1, 0, 2, 0, 1, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
setCombatFormula(combat10_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat10_Brush = {CONST_ANI_ENERGYBALL,0,2,0,4,-2,0,-4,0,0,-2,0,-4,2,0,4,0}

-- Areas/Combat for 2000ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat20_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 1, 0, 0, 2, 0, 0, 1, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}}))
setCombatFormula(combat20_Brush, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)
local dfcombat20_Brush = {CONST_ANI_ENERGYBALL,0,3,0,5,-3,0,-5,0,0,-3,0,-5,3,0,5,0}

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
print(var)

	local startPos = getCreaturePosition(cid)
	RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
	addEvent(RunPart,1000,combat10_Brush,cid,var,dfcombat10_Brush,startPos)
	addEvent(RunPart,2000,combat20_Brush,cid,var,dfcombat20_Brush,startPos)
	doPlayerRemoveSoul(cid, 5)	
	return true
end