local function f(c) -- By Cykotitan
if isMonster(c) then
doRemoveCreature(c)
end
end

local summonName = "Beastia"
local summonTime = 15
function onCastSpell(cid, var) -- Spell by Cykotitan / edited by OTx
local p = getThingPos(cid)
if getTileInfo(p).protection then
doCreatureSay(cid, 'You cannot summon in PZ!', TALKTYPE_ORANGE_1, false, cid, p)
doSendMagicEffect(p, CONST_ME_POFF)
elseif #getCreatureSummons(cid) ~= 0 then
doPlayerSendCancel(cid, 'You can\'t summon more than one.')
doSendMagicEffect(p, CONST_ME_POFF)
else
local r = doSummonMonster(cid, summonName)
if r == 1 then
doSendMagicEffect(p, CONST_ME_MAGIC_BLUE)
--doPlayerSendCancel(cid, getMonsterInfo(summonName).nameDescription .." is ready to help you.")
addEvent(f, summonTime*1000, getCreatureSummons(cid)[1])
return true
else
doPlayerSendDefaultCancel(cid, r)
end
end
end