
if config.Framework == 'qb' then
    local QBCore = exports['qb-core']:GetCoreObject()
elseif config.Framework == 'esx' then
    local ESX = exports['es_extended']:getSharedObject()
end

local speedzone = nil
local ActiveZones = 0
local ZoneLimit = 1

RegisterNetEvent('slowtraffic50')
AddEventHandler('slowtraffic50', function()
    ActiveZones = ActiveZones + 1
    if (ActiveZones <= ZoneLimit) then
        blip = AddBlipForRadius(GetEntityCoords(PlayerPedId()),50.0)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorSlow)
        speedzone = AddSpeedZoneForCoord(GetEntityCoords(PlayerPedId()), 50.0, config.SlowSpeedZone, false)
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["slowtraffic"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["slowtraffic"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["slowtraffic"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["slowtraffic"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["slowtraffic"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["slowtraffic"], '<span class="material-icons"> traffic </span>', 5000)
        end
    elseif (ActiveZones > ZoneLimit) then
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["zonelimit"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["zonelimit"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["zonelimit"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["zonelimit"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], '<span class="material-icons"> traffic </span>', 5000)
        end
    end
    
end)

RegisterNetEvent('slowtraffic75')
AddEventHandler('slowtraffic75', function()
    ActiveZones = ActiveZones + 1
    if (ActiveZones <= ZoneLimit) then
        blip = AddBlipForRadius(GetEntityCoords(PlayerPedId()),75.0)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorSlow)
        speedzone = AddSpeedZoneForCoord(GetEntityCoords(PlayerPedId()), 75.0, config.SlowSpeedZone, false)
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["slowtraffic"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["slowtraffic"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["slowtraffic"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["slowtraffic"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["slowtraffic"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["slowtraffic"], '<span class="material-icons"> traffic </span>', 5000)
        end
    elseif (ActiveZones > ZoneLimit) then
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["zonelimit"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["zonelimit"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["zonelimit"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["zonelimit"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], '<span class="material-icons"> traffic </span>', 5000)
        end
    end
    
end)

RegisterNetEvent('slowtraffic100')
AddEventHandler('slowtraffic100', function()
    ActiveZones = ActiveZones + 1
    if (ActiveZones <= ZoneLimit) then
        blip = AddBlipForRadius(GetEntityCoords(PlayerPedId()),100.0)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorSlow)
        speedzone = AddSpeedZoneForCoord(GetEntityCoords(PlayerPedId()), 100.0, config.SlowSpeedZone, false)
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["slowtraffic"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["slowtraffic"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["slowtraffic"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["slowtraffic"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["slowtraffic"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["slowtraffic"], '<span class="material-icons"> traffic </span>', 5000)
        end
    elseif (ActiveZones > ZoneLimit) then
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["zonelimit"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["zonelimit"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["zonelimit"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["zonelimit"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], '<span class="material-icons"> traffic </span>', 5000)
        end
    end
    
end)

RegisterNetEvent('resumetraffic')
AddEventHandler('resumetraffic', function()
    if speedzone ~= nil then 
        RemoveSpeedZone(speedzone)
        speedzone = nil
        RemoveBlip(blip)
        ActiveZones = 0
    end
    if config.Notify == 'okok' then
        exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["opentraffic"], 5000, 'info')
    elseif config.Notify == 'qb' then
        TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["opentraffic"], "primary", 5000)
    elseif config.Notify == 'esx' then
        ESX.ShowNotification(Lang[config.Lang].notify["opentraffic"], "info", 5000)
    elseif config.Notify == 'mythic' then
        exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["opentraffic"])
    elseif config.Notify == 'mb' then
        exports['mb_notify']:sendNotification(Lang[config.Lang].notify["opentraffic"], {type="info"})
    elseif config.Notify == 'bub' then
        TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["opentraffic"], '<span class="material-icons"> traffic </span>', 5000)
    end
end)

RegisterNetEvent('stoptraffic50')
AddEventHandler('stoptraffic50', function()
    ActiveZones = ActiveZones + 1
    if (ActiveZones <= ZoneLimit) then
        blip = AddBlipForRadius(GetEntityCoords(PlayerPedId()),50.0)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorStop)
        speedzone = AddSpeedZoneForCoord(GetEntityCoords(PlayerPedId()), 50.0, 0.0, false)
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["stoppedtraffic"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["stoppedtraffic"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["stoppedtraffic"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["stoppedtraffic"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["stoppedtraffic"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["stoppedtraffic"], '<span class="material-icons"> traffic </span>', 5000)
        end
    elseif (ActiveZones > ZoneLimit) then
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["zonelimit"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["zonelimit"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["zonelimit"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["zonelimit"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], '<span class="material-icons"> traffic </span>', 5000)
        end
    end
end)

RegisterNetEvent('stoptraffic75')
AddEventHandler('stoptraffic75', function()
    ActiveZones = ActiveZones + 1
    if (ActiveZones <= ZoneLimit) then
        blip = AddBlipForRadius(GetEntityCoords(PlayerPedId()),75.0)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorStop)
        speedzone = AddSpeedZoneForCoord(GetEntityCoords(PlayerPedId()), 75.0, 0.0, false)
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["stoppedtraffic"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["stoppedtraffic"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["stoppedtraffic"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["stoppedtraffic"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["stoppedtraffic"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["stoppedtraffic"], '<span class="material-icons"> traffic </span>', 5000)
        end
    elseif (ActiveZones > ZoneLimit) then
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["zonelimit"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["zonelimit"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["zonelimit"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["zonelimit"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], '<span class="material-icons"> traffic </span>', 5000)
        end
    end
end)

RegisterNetEvent('stoptraffic100')
AddEventHandler('stoptraffic100', function()
    ActiveZones = ActiveZones + 1
    if (ActiveZones <= ZoneLimit) then
        blip = AddBlipForRadius(GetEntityCoords(PlayerPedId()),100.0)
        SetBlipAlpha(blip, config.BlipAlpha)
        SetBlipColour(blip, config.BlipColorStop)
        speedzone = AddSpeedZoneForCoord(GetEntityCoords(PlayerPedId()), 100.0, 0.0, false)
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["stoppedtraffic"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["stoppedtraffic"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["stoppedtraffic"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["stoppedtraffic"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["stoppedtraffic"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["stoppedtraffic"], '<span class="material-icons"> traffic </span>', 5000)
        end
    elseif (ActiveZones > ZoneLimit) then
        if config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["zonelimit"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["zonelimit"], "info", 5000)
        elseif config.Notify == 'mythic' then
            exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["zonelimit"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["zonelimit"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["zonelimit"], '<span class="material-icons"> traffic </span>', 5000)
        end
    end
end)