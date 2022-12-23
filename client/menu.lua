if config.Framework == 'qb' then
    local QBCore = exports['qb-core']:GetCoreObject()
    
    RegisterNetEvent('mainMenu:TrafficManager',
    AddEventHandler('mainMenu:TrafficManager', function(data)
        exports['qb-menu']:openMenu({
            {
                header = Lang[config.Lang].menu["menuheader"],
                icon = 'fas fa-code',
                isMenuHeader = true,
            },
            {
                header = Lang[config.Lang].menu["opentrafficmenu"],
                txt = Lang[config.Lang].menudesc["opentrafficdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'fm-TrafficManager:resumetraffic',
                }
            },  
            {
                header = Lang[config.Lang].menu["slowtrafficmenu"],
                txt = Lang[config.Lang].menudesc["slowtrafficdesc"],
                icon = 'fas fa-code-pull-request',
                params = {
                    event = 'subMenu:slow',
                }
            },
            {
                header = Lang[config.Lang].menu["stoptrafficmenu"],
                txt = Lang[config.Lang].menudesc["stoptrafficdesc"],
                icon = 'fas fa-code-pull-request',
                params = {
                   event = 'subMenu:stop',
                }
            },
        })
    end))

    RegisterNetEvent('subMenu:slow', function(data)
        exports['qb-menu']:openMenu({
            {
                header = Lang[config.Lang].menu["menuheader2"],
                icon = 'fas fa-code',
                isMenuHeader = true,
            },
            {
                header = Lang[config.Lang].menu["50slow"],
                txt = Lang[config.Lang].menudesc["50slowdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'fm-TrafficManager:slowtraffic50',
                }
            },
            {
                header = Lang[config.Lang].menu["75slow"],
                txt = Lang[config.Lang].menudesc["75slowdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'fm-TrafficManager:slowtraffic75',
                }
            },
            {
                header = Lang[config.Lang].menu["100slow"],
                txt = Lang[config.Lang].menudesc["100slowdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'fm-TrafficManager:slowtraffic100',
                }
            },
            {
                header = Lang[config.Lang].menu["back"],
                icon = 'fa-solid fa-backward',
                params = {
                    event = 'mainMenu:TrafficManager',
                    args = {}
                }
            },
        })
    end)

    RegisterNetEvent('subMenu:stop', function(data)
        exports['qb-menu']:openMenu({
            {
                header = Lang[config.Lang].menu["menuheader3"],
                icon = 'fas fa-code',
                isMenuHeader = true,
            },
            {
                header = Lang[config.Lang].menu["50stop"],
                txt = Lang[config.Lang].menudesc["50stopdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'fm-TrafficManager:stoptraffic50',
                }
            },
            {
                header = Lang[config.Lang].menu["75stop"],
                txt = Lang[config.Lang].menudesc["75stopdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'fm-TrafficManager:stoptraffic75',
                }
            },
            {
                header = Lang[config.Lang].menu["100stop"],
                txt = Lang[config.Lang].menudesc["100stopdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'fm-TrafficManager:stoptraffic100',
                }
            },
            {
                header = Lang[config.Lang].menu["back"],
                icon = 'fa-solid fa-backward',
                params = {
                    event = 'mainMenu:TrafficManager',
                    args = {}
                }
            },
        })
    end)

    RegisterCommand('TrafficManagerSystemQBcore', function(source, args, user)
        local Player = QBCore.Functions.GetPlayerData()
        local jobName = Player.job.name
        if Player.job.name == 'police' then
            TriggerEvent('mainMenu:TrafficManagerQBcore')
        elseif config.Notify == 'okok' then
            exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["noaccess"], 5000, 'info')
        elseif config.Notify == 'qb' then
            TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["noaccess"], "primary", 5000)
        elseif config.Notify == 'esx' then
            ESX.ShowNotification(Lang[config.Lang].notify["noaccess"], "info", 5000)
        elseif config.Notify == 'mythic' then
                exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["noaccess"])
        elseif config.Notify == 'mb' then
            exports['mb_notify']:sendNotification(Lang[config.Lang].notify["noaccess"], {type="info"})
        elseif config.Notify == 'bub' then
            TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["noaccess"], '<span class="material-icons"> traffic </span>', 5000)
        end
    end)
    
    if config.UseKeybind == 'qb' then
        RegisterKeyMapping('TrafficManagerSystem', 'Åben Trafik System', 'keyboard', config.Keybind)
    end
elseif config.Framework == 'esx' then
    ESX = exports['es_extended']:getSharedObject()
    if config.ESXMenu == 'context' then
        function OpenTrafficManager()
            local elements = {
                {unselectable = true, title = Lang[config.Lang].menu["menuheader"]},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["opentrafficmenu"], value = "resumetraffic"},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["slowtrafficmenu"], value = "slowtraffic"},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["stoptrafficmenu"], value = "stoptraffic"},
            }
        
            ESX.OpenContext("right", elements, function(menu,element)
                if element.value == "resumetraffic" then
                    TriggerEvent('fm-TrafficManager:resumetraffic')
                    ESX.CloseContext()
                elseif element.value == "slowtraffic" then
                    SlowTrafficMenu()
                elseif element.value == "stoptraffic" then
                    
                end
            end)
    
            ESX.OpenContext("right", elements, function(menu,element)
                if element.value == "resumetraffic" then
                    TriggerEvent('fm-TrafficManager:resumetraffic')
                    ESX.CloseContext()
                elseif element.value == "slowtraffic" then
                    SlowTrafficMenu()
                elseif element.value == "stoptraffic" then
                    StopTrafficMenu()
                end
            end)
        end
    
        function SlowTrafficMenu()
            local elements = {
                {unselectable = true, title = Lang[config.Lang].menu["menuheader"]},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["50slow"], value = "50slow"},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["75slow"], value = "75slow"},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["100slow"], value = "100slow"},
            }
        
            ESX.OpenContext("right", elements, function(menu,element)
                if element.value == "50slow" then
                    TriggerEvent('fm-TrafficManager:slowtraffic50')
                    ESX.CloseContext()
                elseif element.value == "75slow" then
                    TriggerEvent('fm-TrafficManager:slowtraffic75')
                    ESX.CloseContext()
                elseif element.value == "100slow" then
                    TriggerEvent('fm-TrafficManager:slowtraffic100')
                    ESX.CloseContext()
                end
            end)
        end
    
        function StopTrafficMenu()
            local elements = {
                {unselectable = true, title = Lang[config.Lang].menu["menuheader"]},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["50stop"], value = "50stop"},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["75stop"], value = "75stop"},
                {icon = "fas fa-traffic-light", title = Lang[config.Lang].menu["100stop"], value = "100stop"},
            }
        
            ESX.OpenContext("right", elements, function(menu,element)
                if element.value == "50stop" then
                    TriggerEvent('fm-TrafficManager:stoptraffic50')
                    ESX.CloseContext()
                elseif element.value == "75stop" then
                    TriggerEvent('fm-TrafficManager:stoptraffic75')
                    ESX.CloseContext()
                elseif element.value == "100stop" then
                    TriggerEvent('fm-TrafficManager:stoptraffic100')
                    ESX.CloseContext()
                end
            end)
        end
    
        RegisterCommand('TrafficManagerSystemESX', function(source, args, user)
                if ESX.GetPlayerData().job.name == 'police' then
                    OpenTrafficManager()
                elseif config.Notify == 'okok' then
                    exports['okokNotify']:Alert(Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["noaccess"], 5000, 'info')
                elseif config.Notify == 'qb' then
                    TriggerEvent('QBCore:Notify', Lang[config.Lang].notify["noaccess"], "primary", 5000)
                elseif config.Notify == 'esx' then
                    ESX.ShowNotification(Lang[config.Lang].notify["noaccess"], "info", 5000)
                elseif config.Notify == 'mythic' then
                        exports['mythic_notify']:DoHudText('inform', Lang[config.Lang].notify["noaccess"])
                elseif config.Notify == 'mb' then
                    exports['mb_notify']:sendNotification(Lang[config.Lang].notify["noaccess"], {type="info"})
                elseif config.Notify == 'bub' then
                    TriggerEvent('bub-notify:showNotify', Lang[config.Lang].notify["notifyheader"], Lang[config.Lang].notify["noaccess"], '<span class="material-icons"> traffic </span>', 5000)
                end
        end)
        
        if config.UseKeybind =='esx' then
            RegisterKeyMapping('TrafficManagerSystemESX', 'Åben Trafik System', 'keyboard', config.Keybind)
        end
    end
    if config.ESXMenu == 'defualt' then
        
    end
end
