-- Valentine
RegisterServerEvent('lto_fasttravel_check:valentine')
AddEventHandler('lto_fasttravel_check:valentine', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.VanHornPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.ValentinePrice)
	TriggerClientEvent('lto_fasttravel:valentine', _source)	
end)


-- St-Denis
RegisterServerEvent('lto_fasttravel_check:denis')
AddEventHandler('lto_fasttravel_check:denis', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.STDenisPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.STDenisPrice)
	TriggerClientEvent('lto_fasttravel:denis', _source)	
end)

-- Rhodes
RegisterServerEvent('lto_fasttravel_check:rhodes')
AddEventHandler('lto_fasttravel_check:rhodes', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.RhodesPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.RhodesPrice)
	TriggerClientEvent('lto_fasttravel:rhodes', _source)	
end)

-- Van Horn
RegisterServerEvent('lto_fasttravel_check:vanhorn')
AddEventHandler('lto_fasttravel_check:vanhorn', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.VanHornPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.VanHornPrice)
	TriggerClientEvent('lto_fasttravel:vanhorn', _source)	
end)

-- Annesburg
RegisterServerEvent('lto_fasttravel_check:annesburg')
AddEventHandler('lto_fasttravel_check:annesburg', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.AnnesburgPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.AnnesburgPrice)
	TriggerClientEvent('lto_fasttravel:annesburg', _source)	
end)

-- Strawberry
RegisterServerEvent('lto_fasttravel_check:strawberry')
AddEventHandler('lto_fasttravel_check:strawberry', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.StrawberryPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.StrawberryPrice)
	TriggerClientEvent('lto_fasttravel:strawberry', _source)	
end)

-- Blackwater
RegisterServerEvent('lto_fasttravel_check:blackwater')
AddEventHandler('lto_fasttravel_check:blackwater', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.BlackwaterPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.BlackwaterPrice)
	TriggerClientEvent('lto_fasttravel:blackwater', _source)	
end)

-- Armadillo
RegisterServerEvent('lto_fasttravel_check:armadillo')
AddEventHandler('lto_fasttravel_check:armadillo', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.ArmadilloPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.ArmadilloPrice)
	TriggerClientEvent('lto_fasttravel:armadillo', _source)	
end)

-- Tumbleweed
RegisterServerEvent('lto_fasttravel_check:tumbleweed')
AddEventHandler('lto_fasttravel_check:tumbleweed', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.TumbleweedPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.TumbleweedPrice)
	TriggerClientEvent('lto_fasttravel:tumbleweed', _source)	
end)

-- Lagras
RegisterServerEvent('lto_fasttravel_check:Lagras')
AddEventHandler('lto_fasttravel_check:Lagras', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.LagrasPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.LagrasPrice)
	TriggerClientEvent('lto_fasttravel:Lagras', _source)	
end)

-- Colter
RegisterServerEvent('lto_fasttravel_check:Colter')
AddEventHandler('lto_fasttravel_check:Colter', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.ColterPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.ColterPrice)
	TriggerClientEvent('lto_fasttravel:Colter', _source)	
end)

-- MacFarlane
RegisterServerEvent('lto_fasttravel_check:MacFarlane')
AddEventHandler('lto_fasttravel_check:MacFarlane', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.MacfarlanePrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.MacfarlanePrice)
	TriggerClientEvent('lto_fasttravel:MacFarlane', _source)	
end)

-- WapitiIndian
RegisterServerEvent('lto_fasttravel_check:WapitiIndian')
AddEventHandler('lto_fasttravel_check:WapitiIndian', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.WapitiindianPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.WapitiindianPrice)
	TriggerClientEvent('lto_fasttravel:WapitiIndian', _source)	
end)

-- Manzanita
RegisterServerEvent('lto_fasttravel_check:Manzanita')
AddEventHandler('lto_fasttravel_check:Manzanita', function()
	local _source = source 
    TriggerEvent('vorp:getCharacter', _source, function(user)
        argent = user.money
    end)
    if argent <= Config.ManzanitaPrice then
        TriggerClientEvent("vorp:TipBottom", _source, "You dont have enough Money", 7000)
        return
    end
    TriggerEvent("vorp:removeMoney", _source, 0, Config.ManzanitaPrice)
	TriggerClientEvent('lto_fasttravel:Manzanita', _source)	
end)