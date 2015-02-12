local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end
npcHandler:setMessage(MESSAGE_GREET, "Ahoy, |PLAYERNAME|. After some new druid {items}?")
local tabla = {
["jester staff"] = {11, 2493},


}
function creatureSayCallback(cid, type, msg)
local s = getPlayerItemCount
local msgn = "You dont have the neccesary soul orbs for this!"
if msgcontains(msg, 'items') and s(cid,5944) >= 1 then
npcHandler:say('You can change your soul orbs for, {demon helmet} ... And with more than 30 soul orbs for, {vancini axe}', cid)
end
for txt, v in pairs(tabla) do
if msgcontains(msg, txt) then
if doPlayerRemoveItem(cid,5944,v[1]) then
doPlayerAddItem(cid,v[2],1)
npcHandler:say("Here ya' go!", cid)
else
npcHandler:say("".. msgn .."", cid)
end
end
end
return true
end
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())