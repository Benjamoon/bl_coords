ShowNotificationTicker = function(msg)
    logInPauseMenu = 1
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandThefeedPostTicker(0,logInPauseMenu)
end

RegisterCommand('coords', function()
    local coords = GetEntityCoords(GetPlayerPed(-1))
    SendNUIMessage({type='clipboard', data=''..vec(coords.x, coords.y, coords.z, GetEntityHeading(GetPlayerPed(-1)))})
    ShowNotificationTicker('Copied to clipboard! ' .. vec(coords.x, coords.y, coords.z, GetEntityHeading(GetPlayerPed(-1))))
end)