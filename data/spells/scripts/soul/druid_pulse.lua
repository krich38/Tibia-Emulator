-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (100)*-1,(300)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local con___combat0_Brush = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con___combat0_Brush, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(con___combat0_Brush, -0.9, 0, -0.9, 0)
setCombatCondition(combat0_Brush, con___combat0_Brush)

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1},
{0},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (100)*-1,(300)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local con___combat4_Brush = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con___combat4_Brush, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(con___combat4_Brush, -0.9, 0, -0.9, 0)
setCombatCondition(combat4_Brush, con___combat4_Brush)

-- Areas/Combat for 800ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{1},
{0},
{0},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (100)*-1,(300)*-1 
end
setCombatCallback(combat8_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local con___combat8_Brush = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con___combat8_Brush, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(con___combat8_Brush, -0.9, 0, -0.9, 0)
setCombatCondition(combat8_Brush, con___combat8_Brush)

-- Areas/Combat for 1200ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{1},
{0},
{0},
{0},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (100)*-1,(300)*-1 
end
setCombatCallback(combat12_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local con___combat12_Brush = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con___combat12_Brush, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(con___combat12_Brush, -0.9, 0, -0.9, 0)
setCombatCondition(combat12_Brush, con___combat12_Brush)

-- Areas/Combat for 1600ms
local combat16_Brush = createCombatObject()
setCombatParam(combat16_Brush, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatParam(combat16_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat16_Brush,createCombatArea({{1},
{0},
{0},
{0},
{0},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (100)*-1,(300)*-1 
end
setCombatCallback(combat16_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local con___combat16_Brush = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con___combat16_Brush, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(con___combat16_Brush, -0.9, 0, -0.9, 0)
setCombatCondition(combat16_Brush, con___combat16_Brush)

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
	RunPart(combat0_Brush,cid,var)
	addEvent(RunPart,200,combat4_Brush,cid,var)
	addEvent(RunPart,400,combat8_Brush,cid,var)
	addEvent(RunPart,600,combat12_Brush,cid,var)
	addEvent(RunPart,800,combat16_Brush,cid,var)
	return true
end