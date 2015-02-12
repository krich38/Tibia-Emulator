local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end
local temple = {x=1031, y=917, z=7}
npcHandler:setMessage(MESSAGE_GREET, "Hello there, |PLAYERNAME|. Congratulations on reaching 25 kills. You have earned the right to create a new {character}, or a new {account}.")

local account =
{
name = {},
pass = {},
id = 0
}

local character =
{
name = {},
id = 0,
voc = {},
sex = {}
}
local toBe = 0
local capMax = 400
local voc =
{
["sorcerer"] = 5,
["druid"] = 6,
["paladin"] = 7,
["knight"] = 8
}

local engaged = {}
function creatureSayCallback(cid, type, msg)
local 	function createPlayer(cid, voc)
local query = false;
if character.voc[cid] == 5 then
query = db.getResult("INSERT INTO `tfs`.`players`( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( '"..character.name[cid].."', 0, 1, "..account.id..", 100, 5, 645, 645, 15694800, 126, 126, 59, 94, 130, 0, 60, 2795, 2795, 0, 0, 1, 95, 117, 7, '0', 1355, 1, 1418173025, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
local resultID = db.storeQuery("SELECT id FROM players WHERE name = '" .. character.name[cid] .. "';")
db.executeQuery("INSERT INTO player_skills (player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 0, 10, 0);");
db.executeQuery("INSERT INTO player_skills (player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 10, 0);");
db.executeQuery("INSERT INTO player_skills (player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 10, 0);");
db.executeQuery("INSERT INTO player_skills (player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 10, 0);");
db.executeQuery("INSERT INTO player_skills (player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 10, 0);");
db.executeQuery("INSERT INTO player_skills (player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 5, 26, 0);");
db.executeQuery("INSERT INTO player_skills (player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 10, 0);");

db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 101, 1, 2323, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 102, 2, 2171, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 3, 10521, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 104, 4, 8871, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 105, 5, 2534, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 106, 6, 2187, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 107, 7, 7730, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 108, 8, 2195, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 109, 10, 2002, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 110, 103, 2789, 50, '2');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 111, 103, 2420, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 112, 103, 5710, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 103, 7731, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 114, 103, 10515, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 103, 1994, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 116, 103, 5926, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 109, 2268, 100, 'd');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 118, 109, 2279, 50, '2');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 109, 2305, 50, '2');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 120, 109, 2301, 50, '2');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 109, 2261, 50, '2');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 122, 109, 2293, 80, 'P');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 109, 2273, 50, '2');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 124, 115, 7590, 100, 'd');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 125, 115, 7590, 100, 'd');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 126, 116, 2169, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 127, 116, 2169, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 128, 116, 2214, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 129, 116, 2214, 1, '');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 130, 116, 2164, 20, '?  charges   ');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 131, 116, 2164, 20, '?  charges   ');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 132, 116, 2201, 100, '?  chargesd   ');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 133, 116, 2201, 100, '?  chargesd   ');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 134, 116, 2198, 50, '?  charges2   ');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 135, 116, 2198, 50, '?  charges2   ');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 136, 116, 2197, 5, '?  charges   ');");
db.executeQuery("INSERT INTO player_items (player_id, sid, pid, itemtype, count, attributes) VALUES (" .. result.getDataInt(resultID, "id") .. ", 137, 116, 2197, 5, '?  charges   ');");
elseif character.voc[cid] == 6 then
query = db.getResult("INSERT INTO `tfs`.`players` ( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( '".. character.name[cid].."', 0, 1, " .. account.id .. ", 100, 6, 645, 645, 15694800, 126, 126, 59, 94, 130, 0, 60, 2795, 2795, 0, 0, 1, 95, 117, 7, '0', 1355, 1, 1418173025, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
local resultID = db.storeQuery("SELECT id FROM players WHERE name = '" .. character.name[cid] .. "';")
			db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 0, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 5, 25, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 10, 0);");



db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 101, 2323, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 102, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 103, 1988, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 104, 8871, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 5, 105, 2534, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 106, 2191, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 7, 107, 7730, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 8, 108, 2195, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 109, 2789, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 110, 2420, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 111, 5710, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 112, 7731, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 113, 5801, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 114, 2268, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 115, 1996, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 116, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 117, 10520, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 118, 2273, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 119, 1995, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 120, 7590, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 121, 1994, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 122, 2261, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 123, 1991, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 124, 2268, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 125, 2268, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 126, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 127, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 128, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 129, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 130, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 131, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 132, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 133, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 134, 2273, 20, 0x0f14)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 135, 7590, 50, 0x0f32)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 136, 7590, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 137, 7590, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 138, 2261, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 139, 2305, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 140, 2293, 100, 0x0f64)")
elseif character.voc[cid] == 7 then
query = db.getResult("INSERT INTO `tfs`.`players`( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( '"..character.name[cid].."', 0, "..account.id..", 1, 100, 7, 1105, 1105, 15694800, 126, 126, 59, 94, 133, 0, 20, 1420, 1420, 0, 0, 1, 95, 117, 7, '0', 2800, 1, 1418173025, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
local resultID = db.storeQuery("SELECT id FROM players WHERE name = '" .. character.name[cid] .. "';")
				db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 0, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 100, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 5, 75, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 10, 0);");

db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 101, 2498, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 102, 2171, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 103, 1988, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 104, 8891, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 105, 2455, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 7, 106, 2488, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 8, 107, 2195, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 10, 108, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 109, 2789, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 110, 2420, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 111, 5710, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 112, 7731, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 113, 5801, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 114, 2543, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 115, 1992, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 116, 7588, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 117, 1993, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 118, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 119, 10520, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 120, 7589, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 121, 1994, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 122, 2261, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 123, 1991, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 124, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 125, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 126, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 127, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 128, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 129, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 130, 2547, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 131, 2547, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 132, 7588, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 133, 7588, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 134, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 135, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 136, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 137, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 138, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 139, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 140, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 141, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 142, 7589, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 143, 7589, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 144, 7589, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 145, 2261, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 146, 2305, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 147, 2293, 100, 0x0f64)")
elseif character.voc[cid] == 8 then
query = db.getResult("INSERT INTO `tfs`.`players`( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( '"..character.name[cid].."', 0, 1, "..account.id..", 100, 8, 1565, 1565, 15694800, 88, 88, 59, 94, 131, 0, 6, 495, 495, 388800, 0, 1, 95, 117, 7, '0', 2735, 1, 1418169653, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
local resultID = db.storeQuery("SELECT id FROM players WHERE name = '" .. character.name[cid] .. "';")
				db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 0, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 85, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 5, 80, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 10, 0);");


db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 101, 2497, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 102, 2171, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 103, 1988, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 104, 2466, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 5, 105, 2534, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 106, 7389, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 7, 107, 2488, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 8, 108, 2195, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 109, 2789, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 110, 2420, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 111, 5710, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 112, 7731, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 113, 5801, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 114, 8473, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 115, 1993, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 116, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 117, 10520, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 118, 7620, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 119, 1994, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 120, 2261, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 121, 1991, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 122, 8473, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 123, 8473, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 124, 8473, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 125, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 126, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 127, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 128, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 129, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 130, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 131, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 132, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 133, 7620, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 134, 7620, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 135, 7620, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 136, 2261, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 137, 2305, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 138, 2293, 100, 0x0f64)")
end
return query
end
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_PRIVATE and 0 or cid
if msgcontains(msg, "account") then
		npcHandler:say("What would you like your account name to be?", cid)
		talkState[talkUser] = 1
	
	
	elseif talkState[talkUser] == 1 then
		if msg ~= "" or msg ~= nil then
			toBe = string.gsub(msg, "[!'·#$%&/()=?¿¡.*\|;:,><{}]", "")
			npcHandler:say(toBe .. " is it {yes} or {no}?", cid)
			talkState[talkUser] = 2
		else
			npcHandler:say("What would you like your password to be?", cid)
		end
	elseif talkState[talkUser] == 2 and msgcontains(msg, "no") then
		npcHandler:say("What would you like your password to be?", cid)
		talkState[talkUser] = 1
	elseif talkState[talkUser] == 2 and msgcontains(msg, "yes") then
		account.pass[cid] = toBe

		npcHandler:say("What would you like your account name to be?", cid)
		talkState[talkUser] = 3
	elseif talkState[talkUser] == 3 then
		if msg ~= "" or msg ~= nil then
			toBe = string.gsub(msg, "[!·#$%&¬/()=?'¿¡.*\|;:,><{}]", "")
			if toBe == account.pass[cid] then
				npcHandler:say("Your account name cannot be the same as your password.", cid)
				talkState[talkUser] = 3
			else
				npcHandler:say(toBe .. " is it {yes} or {no}?", cid)
				talkState[talkUser] = 4
			end
		else
			npcHandler:say("What would you like your account name to be?", cid)
		end
	elseif talkState[talkUser] == 4 and msgcontains(msg, "no") then
		npcHandler:say("Okay... then what would you like your account name to be?", cid)
		talkState[talkUser] = 3
	elseif talkState[talkUser] == 4 and msgcontains(msg, "yes") then
		local query = db.getResult("select id from accounts where name = " .. db.escapeString(toBe) .. ";")
		local deny = false
		if query:getID() ~= -1 then
			deny = true
			query:free()
		end
		
		if deny then
			npcHandler:say("An account with that name already exists, please try another account name.", cid)
			talkState[talkUser] = 3
		else
			account.name[cid] = toBe

			local query = db.getResult("insert into accounts (name, password) values (" .. db.escapeString(account.name[cid]) .. ", " .. db.escapeString(account.pass[cid]) .. ");")
			if query then
				db.executeQuery("UPDATE accounts SET password = sha1("..db.escapeString(account.pass[cid])..") WHERE name = "..db.escapeString(account.name[cid]).." LIMIT 1")
				local lel = db.storeQuery("select id from accounts where name = " .. db.escapeString(account.name[cid]) .. ";")

				account.id = result.getDataInt(resultID, "id");
				npcHandler:say("Your account has been created. What would you like your character's name to be?", cid)
				talkState[talkUser] = 8
			end

		end
	elseif talkState[talkUser] == 8 then
	if msg ~= "" or msg ~= nil then
	toBe = string.gsub(msg, "[!'·#$%&/()=?¿¡.*\|;:,><{}]", "")
	if string.len(toBe) < 4 then
	npcHandler:say("Your name you want is too short, please select a longer name.", cid)
	elseif string.len(toBe) > 20 then
	npcHandler:say("Your name you want is too long, please select a longer name.", cid)
	elseif string.sub(toBe, 0, 4) == "god " or isInArray({"gm ", "cm "}, string.sub(toBe, 0, 3)) then
	npcHandler:say("Your character is not a staff member, please tell me another name!", cid)
	elseif string.sub(toBe, 0, 1) == string.sub(toBe, 0, 1):lower() then
	npcHandler:say("Your name can not be the first letter in lower case.", cid)
	else
	local query = db.getResult("select id from players where name = " .. db.escapeString(toBe) .. ";")
	if query:getID() ~= - 1 then
	npcHandler:say("A player with that name already exists, please choose another name.", cid)
	query:free()
	else
	npcHandler:say(toBe .. " is it {yes} or {no}?", cid)
	talkState[talkUser] = 9
	end
	end
	else
	npcHandler:say("What would you like as your character name?", cid)
	end
	elseif talkState[talkUser] == 9 and msgcontains(msg, "no") then
	npcHandler:say("What else would you like to name your character?", cid)
	talkState[talkUser] = 8
	elseif talkState[talkUser] == 9 and msgcontains(msg, "yes") then
	character.name[cid] = toBe
	npcHandler:say("Should your character be a {male} or a {female}.", cid)
	talkState[talkUser] = 10
	elseif talkState[talkUser] == 10 and msgcontains(msg, "male") or msgcontains(msg, "female") then
	toBe = (msg == "male" and 1 or 0)
	npcHandler:say("A " .. msg .. ", are you sure?", cid)
	talkState[talkUser] = 11
	elseif talkState[talkUser] == 11 and msgcontains(msg, "no") then
	npcHandler:say("Tell me... would you like to be a {male} or a {female}?", cid)
	talkState[talkUser] = 10
	elseif talkState[talkUser] == 11 and msgcontains(msg, "yes") then
	character.sex[cid] = toBe
	npcHandler:say("What do you want to be... {sorcerer}, {druid}, {paladin} or {knight}.", cid)
	talkState[talkUser] = 12
	elseif talkState[talkUser] == 12 then
	if voc[msg] then
	npcHandler:say("So you would like to be " .. msg .. "... are you sure?", cid)
	toBe = voc[msg]
	talkState[talkUser] = 13
	else
	npcHandler:say("I don't understand what vocation you would like to be... could you please repeat it?", cid)
	end
	elseif talkState[talkUser] == 13 and msgcontains(msg, "no") then
	npcHandler:say("No? Then what would you like to be?", cid)
	talkState[talkUser] = 12
	elseif talkState[talkUser] == 13 and msgcontains(msg, "yes") then
	character.voc[cid] = toBe
	local query = createPlayer(cid)
	if query then
	npcHandler:say("Your character has been created.", cid)
	talkState[talkUser] = 0
	else
	npcHandler:say("Your character couldn't be created, please try again.", cid)
	talkState[talkUser] = 5
	end
elseif msgcontains(msg, "character") then
	if getPlayerAccountId(cid) == 1 then
		npcHandler:say("You are on the public account. Lets create your {account} first.", cid)
		talkState[talkUser] = 0
	else
		npcHandler:say("What would you like as your new character name?", cid)
		talkState[talkUser] = 8
		account.id = getPlayerAccountId(cid)
		end
		elseif talkState[talkUser] == 8 then
	if msg ~= "" or msg ~= nil then
	toBe = string.gsub(msg, "[!'·#$%&/()=?¿¡.*\|;:,><{}]", "")
	if string.len(toBe) < 4 then
	npcHandler:say("Your name you want is too short, please select a longer name.", cid)
	elseif string.len(toBe) > 20 then
	npcHandler:say("Your name you want is too long, please select a longer name.", cid)
	elseif string.sub(toBe, 0, 4) == "god " or isInArray({"gm ", "cm "}, string.sub(toBe, 0, 3)) then
	npcHandler:say("Your character is not a staff member, please tell me another name!", cid)
	elseif string.sub(toBe, 0, 1) == string.sub(toBe, 0, 1):lower() then
	npcHandler:say("Your name can not be the first letter in lower case.", cid)
	else
	local query = db.getResult("select id from players where name = " .. db.escapeString(toBe) .. ";")
	if query:getID() ~= - 1 then
	npcHandler:say("A player with that name already exists, please choose another name.", cid)
	query:free()
	else
	npcHandler:say(toBe .. " is it {yes} or {no}?", cid)
	talkState[talkUser] = 9
	end
	end
	else
	npcHandler:say("What would you like as your character name?", cid)
	end
	elseif talkState[talkUser] == 9 and msgcontains(msg, "no") then
	npcHandler:say("What else would you like to name your character?", cid)
	talkState[talkUser] = 8
	elseif talkState[talkUser] == 9 and msgcontains(msg, "yes") then
	character.name[cid] = toBe
	npcHandler:say("Should your character be a {male} or a {female}.", cid)
	talkState[talkUser] = 10
	elseif talkState[talkUser] == 10 and msgcontains(msg, "male") or msgcontains(msg, "female") then
	toBe = (msg == "male" and 1 or 0)
	npcHandler:say("A " .. msg .. ", are you sure?", cid)
	talkState[talkUser] = 11
	elseif talkState[talkUser] == 11 and msgcontains(msg, "no") then
	npcHandler:say("Tell me... would you like to be a {male} or a {female}?", cid)
	talkState[talkUser] = 10
	elseif talkState[talkUser] == 11 and msgcontains(msg, "yes") then
	character.sex[cid] = toBe
	npcHandler:say("What do you want to be... {sorcerer}, {druid}, {paladin} or {knight}.", cid)
	talkState[talkUser] = 12
	elseif talkState[talkUser] == 12 then
	if voc[msg] then
	npcHandler:say("So you would like to be " .. msg .. "... are you sure?", cid)
	toBe = voc[msg]
	talkState[talkUser] = 13
	else
	npcHandler:say("I don't understand what vocation you would like to be... could you please repeat it?", cid)
	end
	elseif talkState[talkUser] == 13 and msgcontains(msg, "no") then
	npcHandler:say("No? Then what would you like to be?", cid)
	talkState[talkUser] = 12
	elseif talkState[talkUser] == 13 and msgcontains(msg, "yes") then
	character.voc[cid] = toBe
	local query = createPlayer(cid, voc)
	if query then
	npcHandler:say("Your character has been created.", cid)
	doTeleportThing(cid, temple, false)
	talkState[talkUser] = 0
	
	
	else
	npcHandler:say("Your character couldn't be created, please try again.", cid)
	talkState[talkUser] = 5
	end

	
	end
	
	return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())