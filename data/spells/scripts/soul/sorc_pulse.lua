-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 800ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{1},
{0},
{0},
{0},
{2}}))
setAttackFormula(combat8_Brush, COMBAT_FORMULA_LEVELMAGIC, 20, 25, 25, 30)

-- Areas/Combat for 600ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{1},
{0},
{0},
{2}}))
setAttackFormula(combat6_Brush, COMBAT_FORMULA_LEVELMAGIC, 20, 25, 25, 30)

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1},
{0},
{2}}))
setAttackFormula(combat4_Brush, COMBAT_FORMULA_LEVELMAGIC, 20, 25, 25, 30)

-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1},
{2}}))
setAttackFormula(combat2_Brush, COMBAT_FORMULA_LEVELMAGIC, 20, 25, 25, 30)

-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{3}}))
setAttackFormula(combat0_Brush, COMBAT_FORMULA_LEVELMAGIC, 20, 25, 25, 30)

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
	addEvent(RunPart,800,combat8_Brush,cid,var)
	addEvent(RunPart,600,combat6_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var)
	RunPart(combat0_Brush,cid,var)
	return true
end