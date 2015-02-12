local keywordHandler = KeywordHandler:new()
local token = 45351
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
 
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                             npcHandler:onThink() end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|, fancy some new clothing? I'll trade you soul orbs and items for {outfits} and {addons}, if you need more information feel free to ask for {help}.")

function buyAddon(cid, message, keywords, parameters, node)
	if (parameters.confirm ~= true) and (parameters.decline ~= true) then
		if(getPlayerStorageValue(cid, parameters.outfitID) ~= -1 or getPlayerStorageValue(cid, parameters.outfitID) == 0) then
			local itemsTable = parameters.items
			local items_list = ''
			if table.maxn(itemsTable) > 0 then
				for i = 1, table.maxn(itemsTable) do
					local item = itemsTable[i]
					items_list = items_list .. item[2] .. ' ' .. getItemNameById(item[1])
					if i ~= table.maxn(itemsTable) then
						items_list = items_list .. ', '
					end
				end
			end
			local text = ''
			if (parameters.cost > 0) and table.maxn(parameters.items) > 0 then
				text = items_list .. ' and ' .. parameters.cost .. ' soul orbs'
			elseif (parameters.cost > 0) then
				text = parameters.cost .. ' soul orbs'
			elseif table.maxn(parameters.items) then
				text = items_list
			end
			npcHandler:say('Did you bring me ' .. text .. ' for ' .. keywords[1] .. '?', cid)
			return true
		else
			npcHandler:say('You must first earn the base outfit. I cannot reward you with an addon for an outfit you do not have, can I?', cid)
			npcHandler:resetNpc()
		end
	elseif (parameters.confirm == true) then
		local addonNode = node:getParent()
        local addoninfo = addonNode:getParameters()
        local items_number = 0
        if table.maxn(addoninfo.items) > 0 then
            for i = 1, table.maxn(addoninfo.items) do
                local item = addoninfo.items[i]
                if (getPlayerItemCount(cid,item[1]) >= item[2]) then
                    items_number = items_number + 1
                end
            end
        end
        if(getPlayerItemCount(cid, 5944) >= addoninfo.cost) and (items_number == table.maxn(addoninfo.items)) then
            doPlayerRemoveItem(cid, 5944, addoninfo.cost)
            if table.maxn(addoninfo.items) > 0 then
                for i = 1, table.maxn(addoninfo.items) do
                    local item = addoninfo.items[i]
                    doPlayerRemoveItem(cid,item[1],item[2])
                end
            end
            doPlayerAddOutfit(cid, addoninfo.outfit_male, addoninfo.addon)
            doPlayerAddOutfit(cid, addoninfo.outfit_female, addoninfo.addon)
            npcHandler:say('Here you are.', cid)
        else
            npcHandler:say('You do not have needed items or cash!', cid)
        end
        npcHandler:resetNpc()
        return true
	end
end

function buyOutfit(cid, message, keywords, parameters, node)
	if (parameters.confirm ~= true) and (parameters.decline ~= true) then
		if(getPlayerStorageValue(cid, parameters.outfitID) == -1) then
			local itemsTable = parameters.items
			local items_list = ''
			if table.maxn(itemsTable) > 0 then
				for i = 1, table.maxn(itemsTable) do
					local item = itemsTable[i]
					items_list = items_list .. item[2] .. ' ' .. getItemNameById(item[1])
					if i ~= table.maxn(itemsTable) then
						items_list = items_list .. ', '
					end
				end
			end
			local text = ''
			if (parameters.cost > 0) and table.maxn(parameters.items) then
				text = items_list .. ' and ' .. parameters.cost .. ' gp'
			elseif (parameters.cost > 0) then
				text = parameters.cost .. ' gp'
			elseif table.maxn(parameters.items) then
				text = items_list
			end
			npcHandler:say('Did you bring me ' .. text .. ' for ' .. keywords[1] .. '?', cid)
			return true
		else
			npcHandler:say('You already have this outfit!', cid)
			npcHandler:resetNpc()
		end
	elseif (parameters.confirm == true) then
		local addonNode = node:getParent()
        local addoninfo = addonNode:getParameters()
        local items_number = 0
        if table.maxn(addoninfo.items) > 0 then
            for i = 1, table.maxn(addoninfo.items) do
                local item = addoninfo.items[i]
                if (getPlayerItemCount(cid,item[1]) >= item[2]) then
                    items_number = items_number + 1
                end
            end
        end
        if(getPlayerItemCount(cid, 5944) >= addoninfo.cost) and (items_number == table.maxn(addoninfo.items)) then
            doPlayerRemoveItem(cid, 5944, addoninfo.cost)
            if table.maxn(addoninfo.items) > 0 then
                for i = 1, table.maxn(addoninfo.items) do
                    local item = addoninfo.items[i]
                    doPlayerRemoveItem(cid,item[1],item[2])
                end
            end
            doPlayerAddOutfit(cid, addoninfo.outfit_male, addoninfo.addon)
            doPlayerAddOutfit(cid, addoninfo.outfit_female, addoninfo.addon)
            setPlayerStorageValue(cid,addoninfo.outfitID,1)
            npcHandler:say('Here you are.', cid)
        else
            npcHandler:say('You do not have needed items or cash!', cid)
        end
        npcHandler:resetNpc()
        return true
	end
	return true
end

function useToken(cid, message, keywords, parameters, node)
	local tokens = getPlayerStorageValue(cid, token)
	if(tokens > 0) then
		npcHandler:say('You currently have ' .. tokens .. ' tokens.', cid)
	else
		npcHandler:say('You have no available tokens! You can earn them by completing quests, or purchase some on the website.', cid)
		npcHandler:resetNpc()
	end
	return true
end



local noNode = KeywordNode:new({'no'}, buyAddon, {decline = true})
local yesNode = KeywordNode:new({'yes'}, buyAddon, {confirm = true})
local nooutfitNode = KeywordNode:new({'no'}, buyOutfit, {decline = true})
local yesoutfitNode = KeywordNode:new({'yes'}, buyOutfit, {confirm = true})


local outfit_node = keywordHandler:addKeyword({'shaman outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 158, outfit_male = 154, addon = 0, outfitID = 1})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first shaman addon'}, buyAddon, {cost = 10, items = {}, outfit_female = 158, outfit_male = 154, addon = 1, storageID = 10029, outfitID = 1})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second shaman addon'}, buyAddon, {cost = 20, items = {}, outfit_female = 158, outfit_male = 154, addon = 2, storageID = 10030, outfitID = 1})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)


-- citizen (done)
local outfit_node = keywordHandler:addKeyword({'first citizen addon'}, buyAddon, {outfitID = 0, cost = 0, items = {}, outfit_female = 136, outfit_male = 128, addon = 1, storageID = 10001})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second citizen addon'}, buyAddon, {outfitID = 0, cost = 0, items = {}, outfit_female = 136, outfit_male = 128, addon = 2, storageID = 10002})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- hunter (done)
local outfit_node = keywordHandler:addKeyword({'first hunter addon'}, buyAddon, {outfitID = 0, cost = 0, items = {}, outfit_female = 137, outfit_male = 129, addon = 1, storageID = 10003})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second hunter addon'}, buyAddon, {outfitID = 0, cost = 0, items = {}, outfit_female = 137, outfit_male = 129, addon = 2, storageID = 10004})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- knight (done)
local outfit_node = keywordHandler:addKeyword({'first knight addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5880,100}, {5892,1}}, outfit_female = 139, outfit_male = 131, addon = 1, storageID = 10005})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second knight addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5893,100}, {5924,1}, {5885,1}, {5887,1}}, outfit_female = 139, outfit_male = 131, addon = 2, storageID = 10006})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- mage (done)
local outfit_node = keywordHandler:addKeyword({'first mage addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{2182,1}, {2186,1}, {2185,1}, {8911,1}, {2181,1}, {2183,1}, {2190,1}, {2191,1}, {2188,1}, {8921,1}, {2189,1}, {2187,1}, {2392,30}, {5809,1}, {2193,20}}, outfit_female = 138, outfit_male = 130, addon = 1, storageID = 10005}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second mage addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5903,1}}, outfit_female = 138, outfit_male = 130, addon = 2, storageID = 10006}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
 
 
-- summoner (done)
local outfit_node = keywordHandler:addKeyword({'first summoner addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5878,100}}, outfit_female = 141, outfit_male = 133, addon = 1, storageID = 10009}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second summoner addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5894,70}, {5911,20}, {5883,40}, {5922,35}, {5879,10}, {5881,60}, {5882,40}, {2392,3}, {5905,30}}, outfit_female = 141, outfit_male = 133, addon = 2, storageID = 10010}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
 
 
-- barbarian (done)
local outfit_node = keywordHandler:addKeyword({'first barbarian addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5884,1}, {5885,1}, {5910,50}, {5911,50}, {5886,10}}, outfit_female = 147, outfit_male = 143, addon = 1, storageID = 10011})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second barbarian addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5880,100}, {5892,1}, {5893,50}, {5876,50}}, outfit_female = 147, outfit_male = 143, addon = 2, storageID = 10012})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- druid (done)
local outfit_node = keywordHandler:addKeyword({'first druid addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5896,50}, {5897,50}}, outfit_female = 148, outfit_male = 144, addon = 1, storageID = 10013})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second druid addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5906,100}, {5939,1}, {5940,1}}, outfit_female = 148, outfit_male = 144, addon = 2, storageID = 10014})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- nobleman (done)
local outfit_node = keywordHandler:addKeyword({'first nobleman addon'}, buyAddon, {outfitID = 0, cost = 150000, items = {}, outfit_female = 140, outfit_male = 132, addon = 1, storageID = 10015})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second nobleman addon'}, buyAddon, {outfitID = 0, cost = 150000, items = {}, outfit_female = 140, outfit_male = 132, addon = 2, storageID = 10016})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- oriental (done)
local outfit_node = keywordHandler:addKeyword({'first oriental addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5945,1}}, outfit_female = 150, outfit_male = 146, addon = 1, storageID = 10017})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second oriental addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5883,100}, {5895,100}, {5891,2}, {5912,100}}, outfit_female = 150, outfit_male = 146, addon = 2, storageID = 10018})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- warrior (done)
local outfit_node = keywordHandler:addKeyword({'first warrior addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5925,100}, {5899,100}, {5884,1}, {5919,1}}, outfit_female = 142, outfit_male = 134, addon = 1, storageID = 10019})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second warrior addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5880,100}, {5887,1}}, outfit_female = 142, outfit_male = 134, addon = 2, storageID = 10020})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- wizard (done)
local outfit_node = keywordHandler:addKeyword({'first wizard addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{2536,1}, {2492,1}, {2488,1}, {2123,1}}, outfit_female = 149, outfit_male = 145, addon = 1, storageID = 10021})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second wizard addon'}, buyAddon, {outfitID = 0, cost = 0, items = {{5922,50}}, outfit_female = 149, outfit_male = 145, addon = 2, storageID = 10022})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- assassin (done)
local outfit_node = keywordHandler:addKeyword({'assassin outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 156, outfit_male = 152, addon = 0, outfitID = 2})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first assassin addon'}, buyAddon, {outfitID = 2, cost = 0, items = {{5912,50}, {5910,50}, {5911,50}, {5913,50}, {5914,50}, {5909,50}, {5886,10}}, outfit_female = 156, outfit_male = 152, addon = 1, storageID = 10023})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second assassin addon'}, buyAddon, {outfitID = 2, cost = 0, items = {{5804,1}, {5930,10}}, outfit_female = 156, outfit_male = 152, addon = 2, storageID = 10024})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- beggar (done)
local outfit_node = keywordHandler:addKeyword({'beggar outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 157, outfit_male = 153, addon = 0, outfitID = 3})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first beggar addon'}, buyAddon, {outfitID = 3, cost = 0, items = {{5878,50}, {5921,30}, {5913,20}, {5894,10}}, outfit_female = 157, outfit_male = 153, addon = 1, storageID = 10025})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second beggar addon'}, buyAddon, {outfitID = 3, cost = 0, items = {{5883,100}, {2160,2}, {6107,1}}, outfit_female = 157, outfit_male = 153, addon = 2, storageID = 10026})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- pirate (done)
local outfit_node = keywordHandler:addKeyword({'pirate outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 155, outfit_male = 151,  addon = 0, outfitID = 4})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first pirate addon'}, buyAddon, {outfitID = 4, cost = 0, items = {{6098,100}, {6126,100}, {6097,100}}, outfit_female = 155, outfit_male = 151, addon = 1, storageID = 10027})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second pirate addon'}, buyAddon, {outfitID = 4, cost = 0, items = {{6101,1}, {6102,1}, {6100,1}, {6099,1}}, outfit_female = 155, outfit_male = 151, addon = 2, storageID = 10028})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

 
-- norseman (done)
local outfit_node = keywordHandler:addKeyword({'norseman outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 252, outfit_male = 251, addon = 0, outfitID = 5})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first norseman addon'}, buyAddon, {outfitID = 5, cost = 0, items = {{7290,5}}, outfit_female = 252, outfit_male = 251, addon = 1, storageID = 10031})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second norseman addon'}, buyAddon, {outfitID = 5, cost = 0, items = {{7290,10}}, outfit_female = 252, outfit_male = 251, addon = 2, storageID = 10032})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- jester (done)(custom)
local outfit_node = keywordHandler:addKeyword({'jester outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 270, outfit_male = 273, addon = 0, outfitID = 6})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first jester addon'}, buyAddon, {outfitID = 6, cost = 0, items = {{5912,50}, {5913,50}, {5914,50}, {5909,50}}, outfit_female = 270, outfit_male = 273, addon = 1, storageID = 10033})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second jester addon'}, buyAddon, {outfitID = 6, cost = 0, items = {{5912,50}, {5910,50}, {5911,50}, {5912,50}}, outfit_female = 270, outfit_male = 273, addon = 2, storageID = 10034})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- demonhunter (done)(custom)
local outfit_node = keywordHandler:addKeyword({'demonhunter outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 288, outfit_male = 289, addon = 0, outfitID = 7})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first demonhunter addon'}, buyAddon, {outfitID = 7, cost = 0, items = {{5905,30}, {5906,40}, {5954,50}, {6500,50}, {2151,100}}, outfit_female = 288, outfit_male = 289, addon = 1, storageID = 10035})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second demonhunter addon'}, buyAddon, {outfitID = 7, cost = 0, items = {{5906,50}, {6500,200}, {2151,100}}, outfit_female = 288, outfit_male = 289, addon = 2, storageID = 10036})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
	
	
	
	
	
	
 
-- nightmare (done)(custom)
local outfit_node = keywordHandler:addKeyword({'nightmare outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 269, outfit_male = 268, addon = 0, outfitID = 8})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first nightmare addon'}, buyAddon, {outfitID = 8, cost = 0, items = {{6500,1500}}, outfit_female = 269, outfit_male = 268, addon = 1, storageID = 10037})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second nightmare addon'}, buyAddon, {outfitID = 8, cost = 0, items = {{6500,1500}}, outfit_female = 269, outfit_male = 268, addon = 2, storageID = 10038})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- brotherhood (done)(custom)
local outfit_node = keywordHandler:addKeyword({'brotherhood outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 279, outfit_male = 278, addon = 0, outfitID = 9})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first brotherhood addon'}, buyAddon, {outfitID = 9, cost = 0, items = {{6500,1500}}, outfit_female = 279, outfit_male = 278, addon = 1, storageID = 10039})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second brotherhood addon'}, buyAddon, {outfitID = 9, cost = 0, items = {{6500,1500}}, outfit_female = 279, outfit_male = 278, addon = 2, storageID = 10040})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- yalaharian (done)(custom)
local outfit_node = keywordHandler:addKeyword({'yalaharian outfit'}, buyOutfit, {cost = 0, items = {{5015, 1}}, outfit_female = 324, outfit_male = 325, addon = 0, outfitID = 10})
outfit_node:addChildKeywordNode(yesoutfitNode)
outfit_node:addChildKeywordNode(nooutfitNode)
local outfit_node = keywordHandler:addKeyword({'first yalaharian addon'}, buyAddon, {outfitID = 10, cost = 0, items = {}, outfit_female = 324, outfit_male = 325, addon = 1, storageID = 10041})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second yalaharian addon'}, buyAddon, {outfitID = 10, cost = 0, items = {}, outfit_female = 324, outfit_male = 325, addon = 2, storageID = 10041})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- warmaster (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first warmaster addon'}, buyAddon, {outfitID = 11, cost = 0, items = {}, outfit_female = 336, outfit_male = 335, addon = 1, storageID = 10042})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second warmaster addon'}, buyAddon, {outfitID = 11, cost = 0, items = {}, outfit_female = 336, outfit_male = 335, addon = 2, storageID = 10043})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
 
-- wayfarer (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first wayfarer addon'}, buyAddon, {outfitID = 12, cost = 500000, items = {}, outfit_female = 366, outfit_male = 367, addon = 1, storageID = 10044})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second wayfarer addon'}, buyAddon, {outfitID = 12, cost = 1000000, items = {}, outfit_female = 366, outfit_male = 367, addon = 2, storageID = 10045})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)	
	
local outfit_token = keywordHandler:addKeyword({'token'}, useToken, {})

keywordHandler:addKeyword({'addons'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can give you {citizen}, {hunter}, {knight}, {mage}, {nobleman}, {summoner}, {warrior}, {barbarian}, {druid}, {wizard}, {oriental}, {pirate}, {assassin}, {beggar}, {shaman}, {norseman}, {nighmare}, {jester}, {yalaharian}, {brotherhood}, {warmaster} and {wayfarer} addons.'})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To buy the first addon say \'first outfit addon\', for the second addon say \'second outfit addon\', e.g {first shaman addon} to buy the first addon, or {second shamon addon} to buy the second. If you are after outfits, however, simply just tell me the outfit you are seeking, e.g {shaman outfit}.'})
keywordHandler:addKeyword({'outfits'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can give you {shaman} outfits.'})

npcHandler:addModule(FocusModule:new())