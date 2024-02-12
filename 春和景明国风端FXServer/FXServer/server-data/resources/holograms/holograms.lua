--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( 220.83, -811.02, 30.624, GetEntityCoords(GetPlayerPed(-1))) < 25.0 then
			Draw3DText( 220.83, -811.02, 30.624  -1.000, "中央车库", 7, 0.2, 0.12)
			Draw3DText( 220.83, -811.02, 30.624  -1.500, "欢迎大家来到我的服务器", 7, 0.2, 0.12)
			Draw3DText( 220.83, -811.02, 30.624  -2.000, "祝福大家玩的开心玩的愉快", 7, 0.2, 0.12)
			Draw3DText( 220.83, -811.02, 30.624  -2.500, "QQ群1084417992", 7, 0.2, 0.12)
		end		
				--Hologram No. 2
		if GetDistanceBetweenCoords( -43.5897, -1109.0146, 26.4378, GetEntityCoords(GetPlayerPed(-1))) < 25.0 then
			Draw3DText( -43.5897, -1109.0146, 26.4378  -1.000, "汽车经销商", 4, 0.1, 0.1)
			Draw3DText( -43.5897, -1109.0146, 26.4378  -1.500, "春和景明：赔钱大甩卖4S店", 4, 0.1, 0.1)
			Draw3DText( -43.5897, -1109.0146, 26.4378  -2.000, "如果有需要的车辆请联系服主", 4, 0.1, 0.1)
   			Draw3DText( -43.5897, -1109.0146, 26.4378  -2.500, "欢迎大家踊跃参与提出更多的宝贵意见", 4, 0.1, 0.1)
		end	
		--Hologram No. 3
		if GetDistanceBetweenCoords( -363.2774, -137.1746, 38.6843, GetEntityCoords(GetPlayerPed(-1))) < 25.0 then
			Draw3DText( -363.2774, -137.1746, 38.6843  -1.000, "社会春爆改修车厂", 4, 0.1, 0.1)
			Draw3DText( -363.2774, -137.1746, 38.6843  -1.500, "爆改打造属于自己的车辆", 4, 0.1, 0.1)
			Draw3DText( -363.2774, -137.1746, 38.6843  -2.000, "如有更好的车辆请联系服主", 4, 0.1, 0.1)
   			Draw3DText( -363.2774, -137.1746, 38.6843  -2.500, "希望春和景明的小伙伴玩的开心改的愉快", 4, 0.1, 0.1)
		end	
		--Hologram No. 4
		if GetDistanceBetweenCoords( -1675.2537, -932.5616, 7.7211, GetEntityCoords(GetPlayerPed(-1))) < 25.0 then
			Draw3DText( -1675.2537, -932.5616, 7.7211  -1.000, "春和景明大剧院", 4, 0.1, 0.1)
			Draw3DText( -1675.2537, -932.5616, 7.7211  -1.500, "活动节日聚集地", 4, 0.1, 0.1)
			Draw3DText( -1675.2537, -932.5616, 7.7211  -2.000, "如有好的电影可以推荐给服主", 4, 0.1, 0.1)
   			Draw3DText( -1675.2537, -932.5616, 7.7211  -2.500, "希望春和景明的小伙伴玩的开心改的愉快", 4, 0.1, 0.1)
		end	
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(12)
         SetTextProportional(1)
         SetTextColour(255, 255, 0, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
