-- Server Message Script
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
"Please respect others while on our servers. Abusive language will get you kicked/banned!",
"Do not spam chat and do not advertise for other servers!  This will get you kicked/banned!",
"If you think you found a bug, please post a report on our forums describing it and we will check into it! :)"
}
local colors = {
	Color(0, 255, 0),
	Color(0, 255, 100)
}


function welcomeMsg(args)
	-- Show welcome messages to player
	for i = 1, 8 do
		Chat:Send(args.player,messages[i],colors[1])
	end
	
	return true
end

--local i = 1
--while i<=2 do
	--Chat:Broadcast(message1,color1)
	--i = i + 1
--end

Events:Subscribe("PlayerJoin", welcomeMsg)