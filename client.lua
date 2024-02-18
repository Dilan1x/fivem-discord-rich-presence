local discordAppId = "YOUR_DISCORD_APP_ID"
local discord = exports("discord", {})

Citizen.CreateThread(function()
    Discord_SetAppId(discordAppId)
    Discord_SetAsset("logo") -- Nombre del asset que configuraste en Discord Developer Portal

    while true do
        -- Actualiza el estado en Discord
        Discord_RunCallbacks()

        -- Aquí puedes modificar lo que se muestra en Discord según lo que esté haciendo el jugador en FiveM
        Discord_Update('Playing on server', 'Description', 'large_image_key')
        
        -- Puedes actualizar el estado cada cierto tiempo o cuando ocurra algún evento en el juego
        Citizen.Wait(10000) -- Actualiza cada 10 segundos
    end
end)
