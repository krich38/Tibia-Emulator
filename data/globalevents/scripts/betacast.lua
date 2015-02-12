local messages = {
    "The server is current in beta testing phase mode. Quests, NPC's, addons, etc have been disabled. Rewards are earned by reporting bugs and suggesting upgrades. ETA for final version is early Feb."
}

function onThink(interval, lastExecution, thinkInterval)
    doBroadcastMessage("The server is current in beta testing phase mode. Quests, NPC's, addons, custom accouts, etc have been disabled. Rewards are earned by reporting bugs and suggesting upgrades (use !report <keyhere>, <bugdescription>, e.g !report key123, no stair case - rememeber your key for a redeemable reward). ETA for final version is early Feb.", 20)
    return TRUE
end