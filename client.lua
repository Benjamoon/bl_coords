ShowNotificationTicker = function(message)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(0, 1)
end

RegisterCommand('coords', function()
    local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    SendNUIMessage({
        type = 'clipboard',
        data = '' .. vec(coords.x, coords.y, coords.z, heading)
    })
    ShowNotificationTicker('Copied to clipboard! ' .. vec(coords.x, coords.y, coords.z, heading))
end)

RegisterKeyMapping('coords', 'Copy coordinates to clipboard', 'keyboard', 'PAGEUP')
