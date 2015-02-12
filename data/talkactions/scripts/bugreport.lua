-- Coded by Dark ShaoOz
function onSay(cid, words, param, channel)
    local storage = 6708 -- (You can change the storage if its already in use)
    local delaytime = 30 -- (Exhaust In Seconds.)
    local x = getPlayerPosition(cid).x -- (Do not edit this.)
    local y = getPlayerPosition(cid).y -- (Do not edit this.)
    local z =  getPlayerPosition(cid).z -- (Do not edit this.)
    if(param == '') then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Command param required.")
        return true
    end
	local t = string.explode(param, ",")
	if(not t[2]) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Command param required.")
return true
	end
    if (getPlayerStorageValue(cid, storage) <= os.time()) then
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your report has been received successfully!")
        db.executeQuery("INSERT INTO  `znote_player_reports` (`id` ,`name` ,`posx` ,`posy` ,`posz` ,`report_description` ,`date`)VALUES (NULL ,  '" .. t[1] .. "',  '" .. x .. "',  '" .. y .. "',  '" .. z .. "',  " .. db.escapeString(t[2]) .. ",  '" .. os.time() .. "')")
        setPlayerStorageValue(cid,storage,os.time()+delaytime)
    else
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You have to wait "..getPlayerStorageValue(cid, storage) - os.time().." seconds to report again.")
    end
    return TRUE
end