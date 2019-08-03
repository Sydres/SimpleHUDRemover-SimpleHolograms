Citizen.CreateThread(function()
    Holograms()
end)
-------------------------------------------------------------------------------------------------------------------------

-- Start of Config

function Holograms()
		while true do
			Citizen.Wait(0)

-- Hologram Number 1
		if GetDistanceBetweenCoords( -414.32, 1164.22, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 2.5 then

		Draw3DText( -414.32, 1164.22, 326.00, "Simple Holograms - Press ~r~[E] ~w~to buy a life. - Created by ~r~Mart475~s~.", 4, 0.35)
		end

-- Hologram Number 2
		if GetDistanceBetweenCoords( -412.12, 1172.21, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 2.5 then

		Draw3DText( -412.12, 1172.21, 326.00, "This is a test of the ~r~Simple Holograms ~s~script.", 4, 0.35)
			
		end	
	end
end

-- End of Config

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scale)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local fov = (1/GetGameplayCamFov())*100 
		 
		 SetTextScale(scale, scale)
		 SetTextOutline()
		 SetTextDropShadow()
		 SetTextDropshadow(2, 0, 0, 0, 255)
         SetTextFont(fontId)
         SetTextProportional(1)
		 SetTextEntry("STRING")
         SetTextCentre(1)
         SetTextColour(255, 255, 255, 255)
		 AddTextComponentString(textInput)
		 SetDrawOrigin(x,y,z)
		 DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
