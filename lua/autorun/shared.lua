concommand.Add("admin_broadcast", function(ply,cmd,args,str)
	if ply:Nick() == 'GeekyGamer14' then
		for _, pl in pairs(player.GetAll()) do
			if args[2] then
				if args[2] == 'blue' then
					chat.AddText(Color(0, 255, 0), "[Admin Broadcast] ", Color(0, 0, 255), args[1])
				elseif args[2] == 'red' then
					chat.AddText(Color(0, 255, 0), "[Admin Broadcast] ", Color(255, 0, 0), args[1])
				else
					chat.AddText(Color(0, 255, 0), "[Admin Broadcast] ", Color(255, 255, 255), args[1])
				end
			else
				chat.AddText(Color(0, 255, 0), "[Admin Broadcast] ", Color(255, 255, 255), args[1])
			end
		end
	else
		print("You do not have permission to execute this command")
	end
end)

concommand.Add('dropallweapons', function(ply,cmd,args,str)
	for _, pl in pairs(player.GetAll()) do
		chat.AddText(Color(0,255,0), ply:Nick(), Color(255,255,255), " has stripped their weapons")
	end
	for k, v in pairs( ply:GetWeapons() ) do
		ply:DropWeapon( v )
	end
end)