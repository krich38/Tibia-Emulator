local config = {
	rateExperience = getConfigInfo('rateExperience'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel'),
	stages = getBooleanFromString(getConfigInfo('experienceStages'))
}

function onSay(cid, words, param, channel)
	local exp = config.rateExperience
	if(config.stages) then
		exp = getExperienceStage(getPlayerLevel(cid), getVocationInfo(getPlayerVocation(cid)).experienceMultiplier)
	end

		doPlayerPopupFYI(cid, 'Server Information:\n\nDonor Items\nFor more information on the offers, visit the website (all items in shop CAN be earned in game).\n\nOutfits\nBase outfits can be earned by trading in soul orbs to Grizzly Adams (located south of temple). All information can be found on Grizzly Adams blackboard.\n\nBountys\nBountys can be offered up. Bounties are cumulative, so they add up. When a bounty on a particular individual becomes greater than 50, they will turn into a massive pharoah.\nThe syntax is !bounty playername, orbs\n!anonbounty playername, orbs')
	return true
end
