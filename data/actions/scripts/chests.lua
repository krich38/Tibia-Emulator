function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 63120 then

   			
   			if(doPlayerAddItem(cid,7588,15, false)) then
			doPlayerSendTextMessage(cid,22,"You have found 15 strong health potions.")
			end
   	elseif item.uid == 63121 then

   			
   			if doPlayerAddItem(cid,7589,15, false) then
   doPlayerSendTextMessage(cid,22,"You have found 15 strong mana potions.")
   end
	elseif item.uid == 63122 then

   			
   			if doPlayerAddItem(cid,2273, 15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 ultimate healing runes.")
			end
   	elseif item.uid == 63123 then

   			
   			if doPlayerAddItem(cid,2278,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 paralyze runes.")
			end
			elseif item.uid == 63124 then

   			
   			if doPlayerAddItem(cid,2268,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 sudden death runes.")
			end
	elseif item.uid == 63125 then

   			
   			if doPlayerAddItem(cid,2274,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 avalanche runes.")
			end
   	elseif item.uid == 63126 then

   			
   			if doPlayerAddItem(cid,7590,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 giant mana potions.")
			end
			elseif item.uid == 63127 then

   			
   			if doPlayerAddItem(cid,7591, 15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 great health potions.")
			end
	elseif item.uid == 63128 then

   			
   			if doPlayerAddItem(cid,2543,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 bolts.")
			end
   	elseif item.uid == 63129 then

   			
   			if doPlayerAddItem(cid,7620,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 mana potions.")
			end
			elseif item.uid == 63130 then

   			
   			if doPlayerAddItem(cid,2269,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 wild growth rune.")
			end
	elseif item.uid == 63131 then

   			
   			if doPlayerAddItem(cid,2305,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 firebomb runes.")
			end
   		elseif item.uid == 63132 then

   			
   			if doPlayerAddItem(cid,2789,15, false) then
   			doPlayerSendTextMessage(cid,22,"You have found 15 brown mushrooms.")
			end
   	end

   	return 1
end
