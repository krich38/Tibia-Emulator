function onSay(cid, words, param, channel)
	doPlayerSetFrags(cid, 10)
	print(doPlayerGetFrags(cid))
end
