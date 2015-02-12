function onLook(cid, thing, position, lookDistance)

	
	if isPlayer(thing.uid) then
	local frags = math.max(0, getCreatureStorage(thing.uid, 20233))
	local deaths = math.max(0, getCreatureStorage(thing.uid, 20234))
	local fragsDeath = math.max(0, getCreatureStorage(thing.uid, 20232))
	local sex = 'He'
			if(getPlayerSex(cid) == 2) then
				sex = 'She'
			end
		if getPlayerAccountId(thing.uid) ~= 1 then
	
			local kdr = frags - deaths
			if kdr > 0 then
				kdr = "+" .. kdr
			end
				print(frags .. " " .. deaths .. " " .. fragsDeath)
			local sex2 = 'His'
			if(sex ~= 'He') then
				sex2 = 'Her'
			end
			
			doPlayerSetSpecialDescription(thing.uid, ". " .. sex .." has " .. fragsDeath .. " frags. " .. sex2 .. " overall frag ratio is " .. kdr)
		else
			doPlayerSetSpecialDescription(thing.uid, ". " .. sex .." has " .. fragsDeath .. " frags")
		end
	
	
	if(thing.uid == cid) then
		
		if getPlayerAccountId(thing.uid) ~= 1 then
			local kdr = frags - deaths
			if kdr > 0 then
				kdr = "+" .. kdr
			end
			doPlayerSetSpecialDescription(thing.uid, ". You have " .. fragsDeath .. " frags. Your overall frag ratio is " .. kdr)
		else
			doPlayerSetSpecialDescription(thing.uid, ". You have " .. fragsDeath .. " frags")
		end
	end
	end
	return true
end