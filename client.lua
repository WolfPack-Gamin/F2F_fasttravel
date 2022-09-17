local prompts = GetRandomIntInRange(0, 0xffffff)
Blips = {
    {
        ["name"] = "Valentine Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-186.34, 643.96, 113.45),
    },
    {
        ["name"] = "St. Denis Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2666.95, -1468.17, 46.31),
    },
    {
        ["name"] = "Rhodes Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(1247.56, -1295.86, 76.26),
    },
    {
        ["name"] = "Van Horn Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2901.62, 635.99, 56.23),
    },
    {
        ["name"] = "Annesburg Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2928.05, 1296.68, 44.50),
    },
    {
        ["name"] = "Strawberry Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-1736.89, -413.78, 154.98),
    },
    {
        ["name"] = "Blackwater Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-744.12, -1248.09, 43.43),
    },
    {
        ["name"] = "Armadillo Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-3725.55, -2628.03, -13.59),
    },
    {
        ["name"] = "Tumbleweed Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-5442.00, -2945.33, -0.57),
    },
    {
        ["name"] = "Lagras Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2097.15, -583.48, 41.51),
    },
    {
        ["name"] = "Colter Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-1306.07, 2424.79, 307.43),
    },
    {
        ["name"] = "MacFarlane Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-2501.15, -2443.82, 60.15),
    },
    {
        ["name"] = "WapitiIndian Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(483.91, 2177.92, 244.33),
    },
    {
        ["name"] = "Manzanita  Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-1963.62, -1609.75, 116.06),
    },
}

Citizen.CreateThread(function()
    if Blips then
        for k,v in pairs(Blips) do
            local blip = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, v.coords)
            SetBlipSprite(blip, v.hash, 1)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
        local coords = GetEntityCoords(PlayerPedId())

    if  (Vdist(coords.x, coords.y, coords.z, -186.34, 643.96, 113.45) < 2.0)    or -- Valentine
        (Vdist(coords.x, coords.y, coords.z, 2666.95, -1468.17, 46.31) < 2.0)   or -- St-Denis
        (Vdist(coords.x, coords.y, coords.z, 1247.56, -1295.86, 76.26) < 2.0)   or -- Rhodes
        (Vdist(coords.x, coords.y, coords.z, 2901.62, 635.99, 56.23) < 2.0)     or -- Van Horn
        (Vdist(coords.x, coords.y, coords.z, 2928.05, 1296.68, 44.50) < 2.0)    or -- Annesburg
        (Vdist(coords.x, coords.y, coords.z, -1736.89, -413.78, 154.98) < 2.0)  or -- Strawberry
        (Vdist(coords.x, coords.y, coords.z, -744.12, -1248.09, 43.43) < 2.0)   or -- Blackwater
        (Vdist(coords.x, coords.y, coords.z, -3725.55, -2628.03, -13.59) < 2.0) or -- Armadillo
        (Vdist(coords.x, coords.y, coords.z, -5442.00, -2945.33, -0.57) < 2.0) or -- Tumbleweed
        (Vdist(coords.x, coords.y, coords.z,  2097.15, -583.48, 41.51) < 2.0)   or -- Lagras
        (Vdist(coords.x, coords.y, coords.z, -1306.07, 2424.79, 307.43) < 2.0)  or -- Colter
        (Vdist(coords.x, coords.y, coords.z, -2501.15, -2443.82, 60.15) < 2.0)  or -- MacFarlane
        (Vdist(coords.x, coords.y, coords.z, 483.91, 2177.92, 244.33) < 2.0)  or -- WapitiIndian
        (Vdist(coords.x, coords.y, coords.z, -1963.62, -1609.75, 116.06) < 2.0)  then -- Manzanita

                    local label  = CreateVarString(10, 'LITERAL_STRING', Config.ButtonDesc)
                	PromptSetActiveGroupThisFrame(prompts, label)
                	if Citizen.InvokeNative(0xC92AC953F0A982AE, openShop) then
					TRAVVELING()
                    end 
        end
    end
end)


MenuData = {}
TriggerEvent("menuapi:getData",function(call)
    MenuData = call
end)

function TRAVVELING()
        MenuData.CloseAll()
		MenuData.Open('default', GetCurrentResourceName(), 'mag_cantitate',
		{title = Config.Tittle, subtext = Config.SubTittle, align = Config.Align,        
        elements = {
        {label = Config.Valentine.." [ "..Config.ValentinePrice.." $]", desc = Config.ValentineDesc, value = "valentine" },
        {label = Config.STDenis.." [ "..Config.STDenisPrice.." $]", desc = Config.STDenisDesc, value = "stdenis" },		
        {label = Config.Annesburg.." [ "..Config.AnnesburgPrice.." $]", desc = Config.AnnesburgDesc, value = "annesburg" },
        {label = Config.VanHorn.." [ "..Config.VanHornPrice.." $]", desc = Config.VanHornDesc, value = "vanhorn" },
        {label = Config.Rhodes.." [ "..Config.RhodesPrice.." $]", desc = Config.RhodesDesc, value = "rhodes" },		
        {label = Config.Blackwater.." [ "..Config.BlackwaterPrice.." $]", desc = Config.BlackwaterDesc, value = "blackwater" },		
        {label = Config.Strawberry.." [ "..Config.StrawberryPrice.." $]", desc = Config.StrawberryDesc, value = "strawberry" },			
        {label = Config.Armadillo.." [ "..Config.ArmadilloPrice.." $]", desc = Config.ArmadilloDesc, value = "armadillo" },			
        {label = Config.Tumbleweed.." [ "..Config.TumbleweedPrice.." $]", desc = Config.TumbleweedDesc, value = "tumbleweed" },		
        {label = Config.Lagras.." [ "..Config.LagrasPrice.." $]", desc = Config.LagrasDesc, value = "lagras" },		
        {label = Config.Colter.." [ "..Config.ColterPrice.." $]", desc = Config.ColterDesc, value = "colter" },		
        {label = Config.Macfarlane.." [ "..Config.MacfarlanePrice.." $]", desc = Config.MacfarlaneDesc, value = "macfarlane" },	
        {label = Config.Wapitiindian.." [ "..Config.WapitiindianPrice.." $]", desc = Config.WapitiindianDesc, value = "wapitiindian" },	
        {label = Config.Manzanita.." [ "..Config.ManzanitaPrice.." $]", desc = Config.ManzanitaDesc, value = "manzanita" },		
        }}, function(data, menu)
		
			if data.current.value == "valentine" then
			TriggerServerEvent("lto_fasttravel_check:valentine")
			menu.close()
			elseif data.current.value == "stdenis" then
			TriggerServerEvent("lto_fasttravel_check:denis")
			menu.close()		
			elseif data.current.value == "annesburg" then
			TriggerServerEvent("lto_fasttravel_check:annesburg")
			menu.close()				
			elseif data.current.value == "vanhorn" then
			TriggerServerEvent("lto_fasttravel_check:vanhorn")
			menu.close()	
			elseif data.current.value == "rhodes" then
			TriggerServerEvent("lto_fasttravel_check:rhodes")
			menu.close()	
			elseif data.current.value == "blackwater" then
			TriggerServerEvent("lto_fasttravel_check:blackwater")
			menu.close()
			elseif data.current.value == "strawberry" then
			TriggerServerEvent("lto_fasttravel_check:strawberry")
			menu.close()
			elseif data.current.value == "armadillo" then
			TriggerServerEvent("lto_fasttravel_check:armadillo")
			menu.close()
			elseif data.current.value == "tumbleweed" then
			TriggerServerEvent("lto_fasttravel_check:tumbleweed")
			menu.close()
			elseif data.current.value == "lagras" then
			TriggerServerEvent("lto_fasttravel_check:Lagras")
			menu.close()
			elseif data.current.value == "colter" then
			TriggerServerEvent("lto_fasttravel_check:Colter")
			menu.close()
			elseif data.current.value == "macfarlane" then
			TriggerServerEvent("lto_fasttravel_check:MacFarlane")
			menu.close()
			elseif data.current.value == "wapitiindian" then
			TriggerServerEvent("lto_fasttravel_check:WapitiIndian")
			menu.close()
			elseif data.current.value == "manzanita" then
			TriggerServerEvent("lto_fasttravel_check:Manzanita")
			menu.close()
			else
			menu.close()
			end
    	end, function(data, menu)
		menu.close()
		end)
end










Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('FastTravel', '- Fast Travel -')
    WarMenu.SetSubTitle('FastTravel', '- Destination -')
    WarMenu.CreateSubMenu('Destination', 'FastTravel', 'Choose Destination')

    while true do

        local ped = GetPlayerPed()
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('FastTravel') then

            if WarMenu.MenuButton('Choose Destination', 'Destination') then
            end

            WarMenu.Display()
			
        elseif WarMenu.IsMenuOpened('Destination') then
			
            if WarMenu.Button("Valentine - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:valentine")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("St-Denis - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:denis")
            WarMenu.CloseMenu()

			elseif WarMenu.Button("Annesburg - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:annesburg")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("Van Horn - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:vanhorn")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("Rhodes - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:rhodes")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("Blackwater - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:blackwater")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("Strawberry - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:strawberry")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("Armadillo - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:armadillo")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("TumbleWeed - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:tumbleweed")
            WarMenu.CloseMenu()

            elseif WarMenu.Button("Lagras - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:Lagras")
            WarMenu.CloseMenu()

            elseif WarMenu.Button("Colter - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:Colter")
            WarMenu.CloseMenu()

            elseif WarMenu.Button("MacFarlane - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:MacFarlane")
            WarMenu.CloseMenu()

            elseif WarMenu.Button("WapitiIndian - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:WapitiIndian")
            WarMenu.CloseMenu()

            elseif WarMenu.Button("Manzanita - (10$)") then
            TriggerServerEvent("lto_fasttravel_check:Manzanita")
            WarMenu.CloseMenu()
			
			elseif WarMenu.Button("Close") then
            WarMenu.CloseMenu()
			
            end
            WarMenu.Display()

        end
        Citizen.Wait(0)
    end
end)

-- Valentine
RegisterNetEvent('lto_fasttravel:valentine')
AddEventHandler('lto_fasttravel:valentine', function()
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -186.34, 643.96, 113.45)
end)

-- St-Denis
RegisterNetEvent('lto_fasttravel:denis')
AddEventHandler('lto_fasttravel:denis', function()
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2666.95, -1468.17, 46.31)
end)

-- Rhodes
RegisterNetEvent('lto_fasttravel:rhodes')
AddEventHandler('lto_fasttravel:rhodes', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 1247.56, -1295.86, 76.26)
end)

-- Van Horn
RegisterNetEvent('lto_fasttravel:vanhorn')
AddEventHandler('lto_fasttravel:vanhorn', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2901.62, 635.99, 56.23)
end)

-- Annesburg
RegisterNetEvent('lto_fasttravel:annesburg')
AddEventHandler('lto_fasttravel:annesburg', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2928.05, 1296.68, 44.50)
end)

-- Strawberry
RegisterNetEvent('lto_fasttravel:strawberry')
AddEventHandler('lto_fasttravel:strawberry', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1736.89, -413.78, 154.98)
end)

-- Blackwater
RegisterNetEvent('lto_fasttravel:blackwater')
AddEventHandler('lto_fasttravel:blackwater', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -744.12, -1248.09, 43.43)
end)

-- Armadillo
RegisterNetEvent('lto_fasttravel:armadillo')
AddEventHandler('lto_fasttravel:armadillo', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -3725.55, -2628.03, -13.59)
end)

-- TumbleWeed
RegisterNetEvent('lto_fasttravel:tumbleweed')
AddEventHandler('lto_fasttravel:tumbleweed', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -5442.00, -2945.33, -0.57)
end)

-- Lagras
RegisterNetEvent('lto_fasttravel:Lagras')
AddEventHandler('lto_fasttravel:Lagras', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2097.15, -583.48, 41.51)
end)

-- Colter
RegisterNetEvent('lto_fasttravel:Colter')
AddEventHandler('lto_fasttravel:Colter', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1306.07, 2424.79, 307.43)
end)

-- MacFarlane
RegisterNetEvent('lto_fasttravel:MacFarlane')
AddEventHandler('lto_fasttravel:MacFarlane', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -2501.15, -2443.82, 60.15)
end)

-- WapitiIndian
RegisterNetEvent('lto_fasttravel:WapitiIndian')
AddEventHandler('lto_fasttravel:WapitiIndian', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 483.91, 2177.92, 244.33)
end)

-- Manzanita
RegisterNetEvent('lto_fasttravel:Manzanita')
AddEventHandler('lto_fasttravel:Manzanita', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1963.62, -1609.75, 116.06)
end)

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    local str = Config.Button
	openShop = PromptRegisterBegin()
	PromptSetControlAction(openShop, 0xD9D0E1C0)
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(openShop, str)
	PromptSetEnabled(openShop, 1)
	PromptSetVisible(openShop, 1)
	PromptSetStandardMode(openShop,1)
    PromptSetHoldMode(openShop, 1)
	PromptSetGroup(openShop, prompts)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,openShop,true)
	PromptRegisterEnd(openShop)
end)

function DrawInfo(text, x, y, size)
    local xc = x / 1.0;
    local yc = y / 1.0;
    SetScriptGfxDrawOrder(3)
    SetTextScale(size, size)
    SetTextCentre(true)
    SetTextColor(255, 255, 255, 100)
    SetTextFontForCurrentCommand(6)
    DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
    SetScriptGfxDrawOrder(3)
end