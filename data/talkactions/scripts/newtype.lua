function onSay(cid, words, param, channel)

--druid
	for variable = 1, 19 do
	local x = variable;	
	if x <= 9 then
x = 0 .. variable;
end
	db.executeQuery("INSERT INTO players ( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( 'Druid "..x.."', 0, 1, 1, 100, 6, 645, 645, 15694800, 126, 126, 59, 94, 130, 0, 70, 2795, 2795, 0, 0, 1, 95, 117, 7, '0', 1355, 1, 1418173025, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
			local resultID = db.storeQuery("SELECT id FROM players WHERE name = 'Druid " .. x .. "';")

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
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 6, 106, 2186, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 7, 107, 7730, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 8, 108, 2195, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 109, 2420, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 110, 2789, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 111, 5710, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 112, 7731, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 103, 113, 5801, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 114, 2213, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 115, 5926, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 116, 2268, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 117, 1996, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 118, 2273, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 119, 1995, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 120, 7590, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 121, 1994, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 122, 2261, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 123, 1991, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 124, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 125, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 126, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 127, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 128, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 129, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 130, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 131, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 132, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 133, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 134, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 135, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 136, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 137, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 138, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 139, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 140, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 141, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 142, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 143, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 144, 2268, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 145, 2268, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 146, 2273, 20, 0x0f14)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 147, 7590, 50, 0x0f32)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 148, 7590, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 149, 7590, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 150, 2269, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 151, 2278, 20, 0x0f14)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 152, 2261, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 153, 2305, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 154, 2293, 100, 0x0f64)")


end
	
	--paladin
		for variable = 1, 19 do
	local x = variable;	
	if x <= 9 then
x = 0 .. variable;
end
	db.executeQuery("INSERT INTO players ( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( 'Paladin "..x.."', 0, 1, 1, 100, 7, 1105, 1105, 15694800, 126, 126, 59, 94, 133, 0, 21, 1420, 1420, 0, 0, 1, 95, 117, 7, '0', 2800, 1, 1418173025, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
			local resultID = db.storeQuery("SELECT id FROM players WHERE name = 'Paladin " .. x .. "';")

result.getDataInt(resultID, "id");


				db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 0, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 10, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 100, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 5, 70, 0);");
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
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 114, 2213, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 115, 5926, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 116, 2543, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 117, 1992, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 118, 7588, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 119, 1993, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 120, 7589, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 121, 1994, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 122, 2261, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 123, 1991, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 124, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 125, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 126, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 127, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 128, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 129, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 130, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 131, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 132, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 133, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 134, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 135, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 136, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 137, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 138, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 139, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 140, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 141, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 142, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 143, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 144, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 145, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 146, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 147, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 148, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 149, 2543, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 150, 2547, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 151, 2547, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 152, 7588, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 153, 7588, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 154, 7589, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 155, 7589, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 156, 7589, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 157, 2261, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 158, 2305, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 159, 2293, 100, 0x0f64)")

	end
	
	
	
	--sorcc
		for variable = 1, 19 do
	local x = variable;	
	if x <= 9 then
x = 0 .. variable;
end
	db.executeQuery("INSERT INTO players ( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( 'Sorcerer "..x.."', 0, 1, 1, 100, 5, 645, 645, 15694800, 126, 126, 59, 94, 130, 0, 70, 2795, 2795, 0, 0, 1, 95, 117, 7, '0', 1355, 1, 1418173025, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
		local resultID = db.storeQuery("SELECT id FROM players WHERE name = 'Sorcerer " .. x .. "';")


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
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 114, 2213, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 115, 5926, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 116, 2268, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 117, 1996, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 118, 2273, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 119, 1995, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 120, 7590, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 121, 1994, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 122, 2261, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 123, 1991, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 124, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 125, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 126, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 127, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 128, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 129, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 130, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 131, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 132, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 133, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 134, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 135, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 136, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 137, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 138, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 139, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 140, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 141, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 142, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 143, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 144, 2268, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 145, 2268, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 146, 2273, 20, 0x0f14)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 147, 7590, 50, 0x0f32)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 148, 7590, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 149, 7590, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 150, 2261, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 151, 2305, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 123, 152, 2293, 100, 0x0f64)")
	end
	--knight
	for variable = 1, 19 do
	
		local x = variable;	
	if x <= 9 then
x = 0 .. variable;
end
		db.executeQuery("INSERT INTO players ( name, world_id, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, rank_id, guildnick, lastlogout, blessings, balance, stamina, direction, loss_experience, loss_mana, loss_skills, loss_containers, loss_items, premend, online, marriage, promotion, deleted, description) VALUES ( 'Knight "..x.."', 0, 1, 1, 100, 8, 1565, 1565, 15694800, 88, 88, 59, 94, 131, 0, 7, 495, 495, 388800, 0, 1, 95, 117, 7, '0', 2735, 1, 1418169653, 16777343, '1', 0, 0, 0, '', 0, 0, 0, 151200000, 2, 100, 100, 100, 100, 100, 0, '0', 0, 0, '0', '');");
		local resultID = db.storeQuery("SELECT id FROM players WHERE name = 'Knight " .. x .. "';")

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, result.getDataInt(resultID, "id"));
				db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 0, 90, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 1, 90, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 2, 90, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 3, 90, 0);");
db.executeQuery("INSERT INTO `tfs`.`player_skills`(player_id, skillid, value, count) VALUES (" .. result.getDataInt(resultID, "id") .. ", 4, 90, 0);");
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
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 114, 2213, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 115, 5926, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 116, 8473, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 117, 1993, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 118, 7620, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 119, 1994, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 120, 2261, 1, 0x0f01)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 113, 121, 1991, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 122, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 123, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 124, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 125, 2214, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 126, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 127, 2169, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 128, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 129, 2164, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 130, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 131, 2198, 100, 0x8001000700636861726765730264000000)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 132, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 133, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 134, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 135, 2165, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 136, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 137, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 138, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 139, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 140, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 115, 141, 2167, 1, '')")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 142, 8473, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 143, 8473, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 117, 144, 8473, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 145, 7620, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 146, 7620, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 119, 147, 7620, 100, 0x0f64)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 148, 2261, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 149, 2305, 30, 0x0f1e)")
db.executeQuery("INSERT INTO `tfs`.`player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES (" .. result.getDataInt(resultID, "id") .. ", 121, 150, 2293, 100, 0x0f64)")
	end
	return true
end
