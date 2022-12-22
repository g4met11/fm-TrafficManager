if config.Framework == 'qb' then
    local QBCore = exports['qb-core']:GetCoreObject()
    
    RegisterNetEvent('mainMenu:TrafficManager',
    AddEventHandler('mainMenu:TrafficManager', function(data)
        exports['qb-menu']:openMenu({
            {
                header = Lang[config.Lang].menu["menuheader"],
                icon = 'fas fa-code',
                isMenuHeader = true, -- Set to true to make a nonclickable title
            },
            {
                header = Lang[config.Lang].menu["opentrafficmenu"],
                txt = Lang[config.Lang].menudesc["opentrafficdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'resumetraffic',
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
                isMenuHeader = true, -- Set to true to make a nonclickable title
            },
            {
                header = Lang[config.Lang].menu["50slow"],
                txt = Lang[config.Lang].menudesc["50slowdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'slowtraffic50',
                }
            },
            {
                header = Lang[config.Lang].menu["75slow"],
                txt = Lang[config.Lang].menudesc["75slowdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'slowtraffic75',
                }
            },
            {
                header = Lang[config.Lang].menu["100slow"],
                txt = Lang[config.Lang].menudesc["100slowdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'slowtraffic100',
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
                isMenuHeader = true, -- Set to true to make a nonclickable title
            },
            {
                header = Lang[config.Lang].menu["50stop"],
                txt = Lang[config.Lang].menudesc["50stopdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'stoptraffic50',
                }
            },
            {
                header = Lang[config.Lang].menu["75stop"],
                txt = Lang[config.Lang].menudesc["75stopdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'stoptraffic75',
                }
            },
            {
                header = Lang[config.Lang].menu["100stop"],
                txt = Lang[config.Lang].menudesc["100stopdesc"],
                icon = 'fas fa-code-merge',
                params = {
                    event = 'stoptraffic100',
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
elseif config.Framework == 'esx' then
    -- Fatter ikke lige ESX docs :/
end

RegisterCommand('TrafficManagerSystem', function(source, args, user)
    TriggerEvent('mainMenu:TrafficManager')
end, admin)

if config.UseKeybind then
    RegisterKeyMapping('TrafficManagerSystem', 'Åben Trafik System', 'keyboard', config.Keybind)
end