-- Simple Server Welcome Message Script
-- Author: Anzu
-- http://AnzusWarGames.info

local messages = {
"Welcome to the Official Anzu's War Games JC2-MP Server!",
"Thanks for coming, hope you enjoy your stay! :-)",
"Hostname: jc2mp.AnzusWarGames.info",
"Port: 7777",
--"Check out our website @ www.AnzusWarGames.info",
--"If you enjoy this server, please consider donating :-)",
"Hackers? Cheaters? Griefers? Please report them on our forums or in Teamspeak",
"www.AnzusWarGames.info/forums",
"Teamspeak Server: TS3.AnzusWarGames.info",
"Press F5 for Help, F6 for Player List, B for Buy Menu",
}
local colors = {
	Color(0, 255, 0),
	Color(0, 255, 100)
}

function welcomeMsg(args)
	-- Show welcome messages to player
	for i, v in ipairs(messages) do
		Chat:Send(args.player,messages[i],colors[1])
	end
	
	return true
end

Events:Subscribe("PlayerJoin", welcomeMsg)