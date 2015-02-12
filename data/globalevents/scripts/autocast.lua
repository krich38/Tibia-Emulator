local messages = {
    "You can use '!info' for more information regarding the server.",
    "Personal accounts require 25 kills.  The door to receive one is in the temple along with instructions on how to create it.",
    "The hit system has 3 different commands. !bounty name, orbs    !anonbounty name, orbs  (anonymous bounties cost 5 extra orbs)   !bountylist",
	"Knights and Paladins can increse their attack speed temporarily by using 'lubricus hur'",
	"Soul orbs are currency.  They can be use to buy various items around town depending on your vocation.",
	"Gaining access to the depot requires you to finish the 'Pits of Inferno' quest.  Depots hold a maximum of 8 items.",
	"NO Multi-Clienting or FREE EXP'ing - This will get you a 24 hour IP ban, and if a repeat offender will get you deleted.",
	"Boss monsters such as Morgaroth were not made to be easily defeated.  Bring a team if you plan on entering a boss area.",
	"Visit our website at http://umbyotsv2.net/",
	"Second addons can only be gained by doing long, difficult quests.",
	"Help support this server by donating!"
}

local i = 0
function onThink(interval, lastExecution, thinkInterval)
    local message = messages[(i % #messages) + 1]
    doBroadcastMessage("Information: " .. message,MESSAGE_STATUS_DEFAULT)
    i = i + 1
    return TRUE
end