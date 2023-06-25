ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('fm-TrafficManager:slowtraffic50S')
AddEventHandler('fm-TrafficManager:slowtraffic50S', function()
	local ZoneCoords = GetEntityCoords(GetPlayerPed(source))
    print(GetEntityCoords(GetPlayerPed(source)))

    TriggerClientEvent('fm-TrafficManager:slowtraffic50', -1, ZoneCoords)
end)

RegisterNetEvent('fm-TrafficManager:slowtraffic75S')
AddEventHandler('fm-TrafficManager:slowtraffic75S', function()
	local ZoneCoords = GetEntityCoords(GetPlayerPed(source))
    print(GetEntityCoords(GetPlayerPed(source)))

    TriggerClientEvent('fm-TrafficManager:slowtraffic75', -1, ZoneCoords)
end)


RegisterNetEvent('fm-TrafficManager:slowtraffic100S')
AddEventHandler('fm-TrafficManager:slowtraffic100S', function()
	local ZoneCoords = GetEntityCoords(GetPlayerPed(source))
    print(GetEntityCoords(GetPlayerPed(source)))

    TriggerClientEvent('fm-TrafficManager:slowtraffic100', -1, ZoneCoords)
end)

RegisterNetEvent('fm-TrafficManager:stoptraffic50S')
AddEventHandler('fm-TrafficManager:stoptraffic50S', function()
	local ZoneCoords = GetEntityCoords(GetPlayerPed(source))
    print(GetEntityCoords(GetPlayerPed(source)))

    TriggerClientEvent('fm-TrafficManager:stoptraffic50', -1, ZoneCoords)
end)

RegisterNetEvent('fm-TrafficManager:stoptraffic75S')
AddEventHandler('fm-TrafficManager:stoptraffic75S', function()
	local ZoneCoords = GetEntityCoords(GetPlayerPed(source))
    print(GetEntityCoords(GetPlayerPed(source)))

    TriggerClientEvent('fm-TrafficManager:stoptraffic75', -1, ZoneCoords)
end)

RegisterNetEvent('fm-TrafficManager:stoptraffic100S')
AddEventHandler('fm-TrafficManager:stoptraffic100S', function()
	local ZoneCoords = GetEntityCoords(GetPlayerPed(source))
    print(GetEntityCoords(GetPlayerPed(source)))

    TriggerClientEvent('fm-TrafficManager:stoptraffic100', -1, ZoneCoords)
end)


RegisterNetEvent('fm-TrafficManager:RemoveBlipS')
AddEventHandler('fm-TrafficManager:RemoveBlipS', function()
    TriggerClientEvent('fm-TrafficManager:resumetraffic', -1, blip)
end)