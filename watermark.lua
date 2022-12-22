if config.Watermark then
  AddEventHandler('onServerResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('[fm-TrafficManager] | Made By Focking Mikkel#0820')
  end)
end