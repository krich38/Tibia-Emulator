local config = {
removeOnUse = "no",
usableOnTarget = "yes", -- can be used on target? (fe. healing friend)
splashable = "0",
realAnimation = "no", -- make text effect visible only for players in range 1x1
healthMultiplier = 1.0,
manaMultiplier = 1.0
}

config.removeOnUse = getBooleanFromString(config.removeOnUse)
config.usableOnTarget = getBooleanFromString(config.usableOnTarget)
config.splashable = getBooleanFromString(config.splashable)
config.realAnimation = getBooleanFromString(config.realAnimation)

local POTIONS = {
[8704] = {empty = 7636, splash = 2, health = {50, 100}}, -- small health potion
[7618] = {empty = 7636, splash = 2, health = {100, 200}}, -- health potion
[7588] = {empty = 7634, splash = 2, health = {200, 400}, level = 50, vocations = {3, 4, 7, 8, 12, 11}, vocStr = "knights and paladins"}, -- strong health potion
[7591] = {empty = 7635, splash = 2, health = {400, 600}, level = 80, vocations = {4, 8, 12}, vocStr = "knights"}, -- great health potion
[8473] = {empty = 7635, splash = 2, health = {670, 900}, level = 100, vocations = {4, 8, 12}, vocStr = "knights"}, -- ultimate health potion

[7620] = {empty = 7636, splash = 7, mana = {70, 130}}, -- mana potion
[7589] = {empty = 7634, splash = 7, mana = {110, 190}, level = 50, vocations = {1, 2, 3, 5, 6, 7, 10, 9}, vocStr = "sorcerers, druids and paladins"}, -- strong mana potion
[7590] = {empty = 7635, splash = 7, mana = {150, 250}, level = 80, vocations = {1, 2, 5, 6, 10, 9}, vocStr = "sorcerers and druids"}, -- great mana potion

[8472] = {empty = 7635, splash = 3, health = {250, 400}, mana = {110, 190}, level = 80, vocations = {3, 7, 11}, vocStr = "paladins"} -- great spirit potion
}

local exhaust = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 950)

function onUse(cid, item, fromPosition, itemEx, toPosition)
local potion = POTIONS[item.itemid]
if(not potion) then
return false
end

itemEx.uid = isInArray({7439, 7443}, item.itemid) and cid or itemEx.uid
if(not isPlayer(itemEx.uid) or (not config.usableOnTarget and cid ~= itemEx.uid)) then
if(not config.splashable) then
return false
end

if(toPosition.x == CONTAINER_POSITION) then
toPosition = getThingPos(item.uid)
end

doDecayItem(doCreateItem(2016, potion.splash, toPosition))
doTransformItem(item.uid, potion.empty)
return true
end

if(hasCondition(cid, CONDITION_EXHAUST)) then
doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
return true
end

if(((potion.level and getPlayerLevel(cid) < potion.level) or (potion.vocations and not isInArray(potion.vocations, getPlayerVocation(cid)))) and
not getPlayerCustomFlagValue(cid, PLAYERCUSTOMFLAG_GAMEMASTERPRIVILEGES))
then
doCreatureSay(itemEx.uid, "Only " .. potion.vocStr .. (potion.level and (" of level " .. potion.level) or "") .. " or above may drink this potion.", TALKTYPE_ORANGE_1)
return true
end

local health = potion.health
if(health and not doCreatureAddHealth(itemEx.uid, (math.random(health[1], health[2])))) then
return false
end

local mana = potion.mana
if(mana and not doPlayerAddMana(itemEx.uid, (math.random(mana[1], mana[2])))) then
return false
end

doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_MAGIC_BLUE)
if(not realAnimation) then
doCreatureSay(itemEx.uid, "Aaah...", TALKTYPE_ORANGE_1)
else
for i, tid in ipairs(getSpectators(getCreaturePosition(cid), 1, 1)) do
if(isPlayer(tid)) then
doCreatureSay(itemEx.uid, "Aaah...", TALKTYPE_ORANGE_1, false, tid)
end
end
end

doAddCondition(cid, exhaust)
if(not potion.empty or potion.empty == item.itemid or config.removeOnUse) then
return true
elseif potion.empty == item.uid then
return doRemoveItem(item.uid)
else
doChangeTypeItem(item.uid, item.type - 1)
if item.type == 1 then
return true
end
end

local v = getItemParent(item.uid)
if not v or v.uid == 0 then
local k = getPlayerItemById(cid, true, potion.empty)
if k.uid > 0 and k.type < 100 and getPlayerFreeCap(cid) >= getItemInfo(potion.empty).weight then
doChangeTypeItem(k.uid, k.type + 1)
else
doPlayerAddItem(cid, potion.empty, 1)
end
return true
end

local size = getContainerSize(v.uid)
for i = 0, size-1 do
local tmp = getContainerItem(v.uid, i)
if tmp.itemid == potion.empty and tmp.type < 100 then
return getPlayerFreeCap(cid) >= getItemInfo(potion.empty).weight and doChangeTypeItem(tmp.uid, tmp.type + 1) or doPlayerAddItem(cid, potion.empty, 1)
end
end

if getContainerSize(v.uid) < getContainerCap(v.uid) then
doAddContainerItem(v.uid, potion.empty)
else
local k = getPlayerItemById(cid, true, potion.empty)
if k.uid > 0 and k.type < 100 and getPlayerFreeCap(cid) >= getItemInfo(potion.empty).weight then
doChangeTypeItem(k.uid, k.type + 1)
else
doPlayerAddItem(cid, potion.empty, 1)
end
end
return true
end