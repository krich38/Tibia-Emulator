local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end
npcHandler:setMessage(MESSAGE_GREET, "Ahoy, |PLAYERNAME|. We are still setting up shop here but check back soon!")
local tabla = {
["modified crossbow"] = {11, 2493},
["infernal bolt"] = {1, 6529},
["power bolt"] = {5, 2547},


}
function creatureSayCallback(cid, type, msg)
local s = getPlayerItemCount
local msgn = "You dont have the neccesary soul orbs for this!"
if msgcontains(msg, 'items') and s(cid,5944) >= 1 then
local msg = 'Hmm, here\s what I can offer; ' 
		for txt, v in pairs(tabla) do
			msg = msg .. '{' .. txt .. '} for ' .. v[1] .. 'orbs, '
		end
		npcHandler:say(msg .. 'just let me know!', cid)
		return true
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