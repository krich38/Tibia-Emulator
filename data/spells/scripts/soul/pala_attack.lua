function uncharge(cid)
	doPlayerSetVocation(cid, 7)
end
	

function onCastSpell(cid, var)
	doPlayerSetVocation(cid, 10)
	addEvent(uncharge, 5000, cid)
	
	return true
end